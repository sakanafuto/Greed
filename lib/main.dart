import 'package:flutter/material.dart';

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
  // PageController _pageController;
  // int _selectedIndex = 1;

  // var _pages = [
  //   InfoPage(), //左にスワイプして表示される画面
  //   MacchinettaPage(), //最初に表示される画面
  //   CategoryPage(), //右にスワイプして表示される画面
  // ];

  // @override
  // void initState() {
  //   super.initState();
  //   _pageController = PageController(initialPage: _selectedIndex);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _pageController.dispose();
  // }

  // void _onPageChanged(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

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
          )
        ),

        drawer: Drawer(child: Center(child: Text("Drawer"))),

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
            ]
          ),
          child: Column(
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
          )
        ));
  }
}

