import 'package:flutter/material.dart';
// import './page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool dark = false;
  void _changeTheme() {
    setState(() => dark = !dark);
  }
  // final pages = [
  //   Container(
  //     color: Colors.pink.shade500,
  //   ),
  //   Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
  //     Text("First text.",
  //         style: TextStyle(
  //           fontSize: 24,
  //           color: Colors.green.shade900,
  //           fontWeight: FontWeight.bold,
  //         )),
  //     Padding(
  //       padding: EdgeInsets.all(32.0),
  //       child: Text("padding!!"),
  //     ),
  //     Container(
  //       height: 100.0,
  //       width: double.infinity,
  //       color: Colors.lightBlue[50],
  //       padding: EdgeInsets.all(5.0),
  //       margin: EdgeInsets.all(10.0),
  //       child: Icon(Icons.margin),
  //     ),
  //     Text("Second text."),
  //     TextButton(
  //       onPressed: () => {print("button.")},
  //       child: Text("update."),
  //     ),
  //     Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
  //       Icon(
  //         Icons.favorite,
  //         color: Colors.pink[600],
  //         size: 24.0,
  //       ),
  //       Icon(
  //         Icons.beach_access,
  //         color: Colors.blue[600],
  //         size: 36.0,
  //       ),
  //       Icon(Icons.audiotrack, color: Colors.green[600], size: 30.0),
  //     ])
  //   ]),
  //   Center(
  //     child: ElevatedButton(
  //       onPressed: _changeTheme,
  //       child: Text("Toggle theme"),
  //     )
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: dark ? ThemeData.dark() : ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            Text("Flutter学習"),
            Spacer(),
            Icon(Icons.bakery_dining_rounded),
          ],
        )),
        drawer: Drawer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("abc"),
                Text("def"),
                Text("ghi"),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("abc"),
                  Text("def"),
                  Text("ghi"),
                ]),
          ],
        )),
        body: Container(
          margin: EdgeInsets.all(40.0),
          padding: EdgeInsets.only(right: 10.0, left: 10.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.lightGreen.shade500,
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                )
              ]),
          child: Center(
              child: ElevatedButton(
            onPressed: _changeTheme,
            child: Text("Toggle theme"),
          )),
        ),
      ),
    );
  }
}