import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greed/ui/greed/greed_list_screen.dart';
import 'package:greed/ui/greed/hive_test_screen.dart';
import 'package:greed/ui/home/home_screen.dart';

final appTabTypeProvider = StateProvider<AppTabType>((ref) => AppTabType.home);

enum AppTabType {
  settings,
  home,
  favorite,
}

class BottomNavigationBarView extends ConsumerWidget {
  BottomNavigationBarView({Key? key}) : super(key: key);

  final _pages = [
    HiveTestScreen(),
    const HomeScreen(),
    const GreedListScreen(
      currentGreed: null,
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Awesome Title!!"),
        ),
        drawer: Drawer(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("ｈ１たいとるです", style: Theme.of(context).textTheme.headline1),
                Text("ｈ４たいとるです", style: Theme.of(context).textTheme.headline4),
                Card(
                  child: ListTile(
                    title: const Text("App"),
                    onTap: () => context.go('/'),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "List",
            ),
          ],
          currentIndex: ref.watch(appTabTypeProvider).index,
          onTap: (selectIndex) => ref.watch(appTabTypeProvider.state).state =
              AppTabType.values[selectIndex],
        ),
        body: _pages[ref.watch(appTabTypeProvider).index],
      ),
    );
  }
}
