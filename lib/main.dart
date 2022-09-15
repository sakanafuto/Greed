import 'package:flutter/material.dart';
import 'package:greed/data/model/greed_state.dart';
import 'package:greed/theme/app_theme.dart';
import 'package:greed/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greed/ui/component/bottom_navigation_bar.dart';
import 'package:greed/ui/home/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(GreedStateAdapter());
  box = await Hive.openBox<GreedState>('greeds');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final router = ref.watch(routerProvider);
    // ref.listen(greedsProvider, (_, __) {
    //   router.refresh();
    // });

    return MaterialApp(
      // routeInformationProvider: router.routeInformationProvider,
      // routeInformationParser: router.routeInformationParser,
      // routerDelegate: router.routerDelegate,
      theme: AppThemeData.mainThemeData,
      title: 'GreedApp',
      home: Scaffold(
        body: const HomeScreen(),
        bottomNavigationBar: BottomNavigationBarView(),
      ),
    );
  }
}
