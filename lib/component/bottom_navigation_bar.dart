import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hello_app/screen/home_screen.dart';
import 'package:hello_app/screen/greed_screen.dart';

final tabTypeProvider = StateProvider<TabType>((ref) => TabType.homeScreen);

enum TabType {
  homeScreen,
  greedScreen,
}

class BottomNavigationBarView extends HookConsumerWidget {
  BottomNavigationBarView({Key? key}) : super(key: key);

  final _views = [
    const HomeScreen(),
    const GreedScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabType = ref.watch(tabTypeProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '欲しい物リスト',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: '欲しい物を追加',
          ),  
        ],
        onTap: (selectIndex) => ref.watch(tabTypeProvider.state).state = TabType.values[selectIndex],
        currentIndex: tabType.index,
      ),
      body: _views[tabType.index]
    );
  }
}
  