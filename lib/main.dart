import 'package:flutter/material.dart';
import './drawer.dart';
import './page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          // Icon(Icons.location_searching_sharp),
          // SizedBox(width: 10),
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
              ]
            ),
          ],
        )
      ),
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
        child: PageView.builder(
          itemBuilder: (context, index) {
            return pages[index];
          },
          itemCount: pages.length,
        ),
      ),
    );
  }
}
