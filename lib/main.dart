import 'package:demo/loginpage2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'loginpage1.dart';

void main() {
  runApp(MaterialApp(
    title: 'Your title',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            //centerTitle: true,
          elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('FindYourWork.in',
            style: TextStyle(fontSize: 30), ),
          ),
          body: Center(
              child: SizedBox.expand(
                  child: Column(children: <Widget>[
            Expanded(
              child: Container(
                width: 400,
                margin: EdgeInsets.all(60),
                child: FlatButton(
                  shape: StadiumBorder(side: BorderSide(color:Colors.red)),
                  child: Text(
                    'Worker',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  color: Colors.lightBlue,

                  textColor: Colors.black87,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewScreen()));
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 400,
                margin: EdgeInsets.all(60),
                child: FlatButton(
                  shape: StadiumBorder(side: BorderSide(color:Colors.red)),
                  child: Text(
                    'Consumer',
                    style: TextStyle(fontSize: 40.0),
                  ),
                  color: Colors.lightBlue,
                  textColor: Colors.black87,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewScreen1()));
                  },
                ),
              ),
            ),
          ])))),
    );
  }
}
