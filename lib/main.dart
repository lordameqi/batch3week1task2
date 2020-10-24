import 'isi/kedua.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  final myCountryController = TextEditingController();
  String nUsername;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("COVID-19 Apps"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: Text("COVID 19 NEWS",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 35.0,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "All Cases = 272691",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          Text("All Deaths: 11310",
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.red)),
                          Text("All Recovered: 90618",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.green)),
                          Text("All Active Cases: 170763",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.orange)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: myCountryController,
                            decoration: new InputDecoration(
                              hintText: "Tulis 'india' dan tekan search",

                              //  icon: Icon(Icons.phone),
                              border: OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0)),
                            ),
                          ),
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              MaterialButton(
                                  color: Colors.red,
                                  child: Text('Search'),
                                  onPressed: () {
                                    nUsername = myCountryController.text;
                                    if (_formKey.currentState.validate()) {
                                      if (nUsername != 'india') {
                                        print("Negara tidak tersedia");
                                      } else {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Kedua()));
                                      }
                                    }
                                  }),
                              MaterialButton(
                                  color: Colors.red,
                                  child: Text('All Information'),
                                  onPressed: () {})
                            ],
                          )),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          MaterialButton(
                              color: Colors.red,
                              child: Text('Updates of Sri Lanka'),
                              onPressed: () {}),
                          Text("IMPORTANT",
                              style: TextStyle(color: Colors.red)),
                          Text("Search 'South Korea' as 'Korea' ")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
