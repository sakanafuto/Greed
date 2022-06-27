import 'package:flutter/material.dart';
import 'favorite_page.dart';
import 'todo_page.dart';


class GreedApp extends StatelessWidget {
  const GreedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GreedHomePage(title: 'Greed Home Page'),
    );
  }
}

class GreedHomePage extends StatefulWidget {
  const GreedHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _GreedHomePageState();
}

class _GreedHomePageState extends State<GreedHomePage> {
  bool dark = false;
  void _changeTheme() {
    setState(() => dark = !dark);
  }

  String _title = "";   
  var _currentIndex = 1;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;

      switch (index) {
        case 0:
          _title = "Settings";
          break;
        case 1:
          _title = "List";
          break;
        case 2:
          _title = "Favorite";
          break;
      }
    });
  }

  final _pages = [
    Container(
      color: Colors.lime.shade100,
    ),
    TodoListPage(),
    const GreedAppBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dark
          ? ThemeData.dark()
          : ThemeData(
              primarySwatch: Colors.green,
            ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
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
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Color.fromARGB(222, 126, 201, 119),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color.fromARGB(222, 126, 201, 119),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
              backgroundColor: Color.fromARGB(222, 126, 201, 119),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: _onTap,
        ),
      ),
    );
  }
}
