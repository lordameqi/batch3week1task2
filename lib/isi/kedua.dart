import 'package:flutter/material.dart';

class Kedua extends StatelessWidget {
  final _formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('India Country'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Form(
              key: _formKey2,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    child: Text("COVID 19 NEWS",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20.0,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    child: Column(
                      children: <Widget>[
                        Text("INDIA",
                            style:
                                TextStyle(color: Colors.red, fontSize: 35.0)),
                        Text(
                          "Cases : 249",
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text("Today Cases : 55",
                            style:
                                TextStyle(color: Colors.blue, fontSize: 15.0)),
                        Text("Deaths : 5", style: TextStyle(color: Colors.red)),
                        Text("Total Deaths : 1",
                            style:
                                TextStyle(color: Colors.red, fontSize: 15.0)),
                        Text("Recovered : 23",
                            style:
                                TextStyle(color: Colors.red, fontSize: 15.0)),
                        Text("Active Cases : 221",
                            style: TextStyle(
                                color: Colors.yellow, fontSize: 15.0)),
                        Text("Critical : 0",
                            style: TextStyle(
                                color: Colors.yellowAccent, fontSize: 15.0)),
                        Text("Cases per Milion : 0",
                            style:
                                TextStyle(color: Colors.black, fontSize: 15.0)),
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
                          //controller: myCountryController,
                          decoration: new InputDecoration(
                            hintText: "Input a Country",

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
                                  onPressed: () {}),
                              MaterialButton(
                                  color: Colors.red,
                                  child: Text('All Information'),
                                  onPressed: () {})
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
