import 'package:flutter/material.dart';

final pages = [
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround, 
    children: <Widget>[
    Text("First text.",
        style: TextStyle(
          fontSize: 24,
          color: Colors.purple.shade900,
          fontWeight: FontWeight.bold,
        )),
    Padding(
      padding: EdgeInsets.all(32.0),
      child: Text("padding!!"),
    ),
    Container(
      height: 100.0,
      width: double.infinity,
      color: Colors.lightBlue[50],
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(10.0),
      child: Icon(Icons.margin),
    ),
    Text("Second text."),
    TextButton(
      onPressed: () => {print("button.")},
      child: Text("update."),
    ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Icon(
        Icons.favorite,
        color: Colors.pink[600],
        size: 24.0,
      ),
      Icon(
        Icons.beach_access,
        color: Colors.blue[600],
        size: 36.0,
      ),
      Icon(Icons.audiotrack, color: Colors.green[600], size: 30.0),
    ])
  ]),
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Text(
        "First text.",
        style: TextStyle(
          fontSize: 24,
          color: Colors.green.shade900,
          fontWeight: FontWeight.bold,
        )
      ),
      Padding(
        padding: EdgeInsets.all(32.0),
        child: Text("padding!!"),
      ),
      Container(
        height: 100.0,
        width: double.infinity,
        color: Colors.lightBlue[50],
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(10.0),
        child: Icon(Icons.margin),
      ),
      Text("Second text."),
      TextButton(
        onPressed: () => {print("button.")},
        child: Text("update."),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Icon(
          Icons.favorite,
          color: Colors.pink[600],
          size: 24.0,
        ),
        Icon(
          Icons.beach_access,
          color: Colors.blue[600],
          size: 36.0,
        ),
        Icon(Icons.audiotrack, color: Colors.green[600], size: 30.0),
      ])
    ]
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround, 
    children: <Widget>[
    Text("First text.",
        style: TextStyle(
          fontSize: 24,
          color: Colors.yellow.shade900,
          fontWeight: FontWeight.bold,
        )),
    Padding(
      padding: EdgeInsets.all(32.0),
      child: Text("padding!!"),
    ),
    Container(
      height: 100.0,
      width: double.infinity,
      color: Colors.lightBlue[50],
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(10.0),
      child: Icon(Icons.margin),
    ),
    Text("Second text."),
    TextButton(
      onPressed: () => {print("button.")},
      child: Text("update."),
    ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Icon(
        Icons.favorite,
        color: Colors.pink[600],
        size: 24.0,
      ),
      Icon(
        Icons.beach_access,
        color: Colors.blue[600],
        size: 36.0,
      ),
      Icon(Icons.audiotrack, color: Colors.green[600], size: 30.0),
    ])
  ]),
];