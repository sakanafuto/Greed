import 'package:flutter/material.dart';
import 'package:hello_app/favorite_page.dart';
import 'package:hello_app/theme/app_theme.dart';
import 'package:hello_app/todo_page.dart';

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
    Container(),
    const TodoListPage(),
    const GreedAppBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.mainThemeData,
      home: Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              // borderRadius: BorderRadius.only(
              //   bottomRight: Radius.elliptical(90, 30),
              // ),
              ),
          title: const Text("Awesome Title!!"),
          elevation: 0,
        ),
        body: Stack(
          children: [
            _pages[_currentIndex],
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    color: Theme.of(context).primaryColor,
                  ),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(160),
                        topRight: Radius.circular(160),
                      ),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("ｈ１たいとるです",
                    style: AppThemeData.mainThemeData.textTheme.headline1),
                Text("ｈ４たいとるです",
                    style: AppThemeData.mainThemeData.textTheme.headline4),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
          ],
          currentIndex: _currentIndex,
          onTap: _onTap,
        ),
      ),
    );
  }
}
