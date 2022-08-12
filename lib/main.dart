import 'package:flutter/material.dart';
import 'package:hello_app/TypeAdapter/greed.dart';
import 'package:hello_app/router/router.dart';
import 'package:hello_app/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box greedBox;
Future<void> main() async {
  await Hive.initFlutter();
  greedBox = await Hive.openBox('greedBox');
  Hive.registerAdapter(GreedAdapter());
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: AppThemeData.mainThemeData,
      title: 'GreedApp',
    );
  }
}
