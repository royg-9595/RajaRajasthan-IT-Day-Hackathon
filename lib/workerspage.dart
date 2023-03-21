import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
          title: Text("Worker's Portal",
          style: TextStyle(color: Colors.black87),),
      elevation: 0,
      backgroundColor: Colors.transparent),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
          'Work Type   : Mason',
          style: TextStyle(fontSize: 23.0),
        ),
      ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
            'Address       : Vizag', textAlign: TextAlign.left,
            style: TextStyle(fontSize: 23.0),
          ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
            'Contact        : 9573195495',
            style: TextStyle(fontSize: 23.0),
          ),
          ),],
    ),);
  }
}