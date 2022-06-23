import 'package:flutter/material.dart';
import 'MyAppBody.dart';
import 'ToDoListPage.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool dark = false;
  String _appTitle;
  MyAppState(this._appTitle);
  String get appTitle => _appTitle; 
  set appTitle(String appTitle){_appTitle = appTitle;}
  

  void _changeTheme() {
    setState(() => dark = !dark);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: dark
          ? ThemeData.dark()
          : ThemeData(
              primarySwatch: Colors.teal,
            ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text(appTitle),
                Spacer(),
              ],
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.face_unlock_rounded),
                ),
                Tab(
                  icon: Icon(
                    Icons.rocket_launch,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.table_bar_sharp,
                  ),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Text("abc"),
                        Text("def"),
                        Text("ghi"),
                      ]),
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0, right: 160.0),
                  child: FloatingActionButton(
                      onPressed: _changeTheme,
                      child: Icon(Icons.sunny,
                          color: Colors.amber.shade300, size: 32.0)),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                color: Colors.yellow.shade200,
              ),
              TodoListPage(),
              MyAppBody(
                title: '',
                appTitle: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
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
//       child: ElevatedButton(
//     onPressed: _changeTheme,
//     child: Text("Toggle theme"),
//   )),
// ];
