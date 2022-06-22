import 'package:flutter/material.dart';
import 'MyAppBody.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
            Text("衝動買い抑制リスト"),
            Spacer(),
            Icon(Icons.bakery_dining_rounded),
          ],
        )),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("abc"),
                      Text("def"),
                      Text("ghi"),
                    ]
                  ),
                ]
              ),
              Padding(
                  padding: EdgeInsets.only(top: 100.0, right: 160.0),
                  child: FloatingActionButton(
                    onPressed: _changeTheme,
                    child: Icon(Icons.sunny,
                      color: Colors.amber.shade300, size: 32.0)
                  ),
                ),
            ],
          ),
        ),
        body: MyAppBody(changeTheme: this._changeTheme),
      ),
    );
  }
}
