import 'package:demo/workerspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage2.dart';
import 'workerspage.dart';

class TextFieldAlertDialog extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Post work'),
              content: Column(
                children: <Widget>[
                  Container(
                  child:TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.account_circle),
                      labelText: 'Worker type',
                    ),
                  ),),
                  Container(
                  child:TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.account_circle),
                      labelText: 'Address',
                    ),),
                  ) ,Container(
          child:TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.account_circle),
                      labelText: 'Mobile Number',
                    ),
                  ),),
                  Container(
                    child:new FlatButton(
                      child: new Text('Add'),
                      onPressed: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WorkersPage()));
                      },
                    ),),
                ],
              ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumer Portal',
        style: TextStyle(color: Colors.black87, fontSize: 30), ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
        body: Center(
        child: ListView(
        children: <Widget>[
        Container(
        height: 70,
            margin: EdgeInsets.all(60),
            color: Colors.red,
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ElevatedButton(
          child: const Text('New Post',
          style: TextStyle(fontSize: 25),),
          onPressed: () {  Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  _displayDialog(context)));},
        )
    ),
    Container(
    height: 70,
        margin: EdgeInsets.all(60),
    width: 400,
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        color: Colors.red,
    child: ElevatedButton(
      child: const Text('Logout',
        style: TextStyle(fontSize: 25),),
    onPressed: () {  Navigator.push(context,
    MaterialPageRoute(builder: (context) => NewScreen1()));},
    )
    ),
    ],
        )
        ),
    );
  }
}