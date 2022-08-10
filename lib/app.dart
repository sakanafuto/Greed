import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_app/favorite_page.dart';
import 'package:hello_app/theme/app_theme.dart';
import 'package:hello_app/todo_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appTabTypeProvider = StateProvider<AppTabType>((ref) => AppTabType.home);

enum AppTabType {
  home,
  settings,
  favorite,
}

class GreedApp extends HookConsumerWidget {
  GreedApp({Key? key}) : super(key: key);

  final _pages = [
    Container(),
    const TodoListPage(),
    const GreedAppBody(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Awesome Title!!"),
          elevation: 0,
        ),
        drawer: Drawer(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("ｈ１たいとるです",
                    style: Theme.of(context).textTheme.headline1),
                Text("ｈ４たいとるです",
                    style: Theme.of(context).textTheme.headline4),
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
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
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
