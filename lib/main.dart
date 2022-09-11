import 'package:flutter/material.dart';
import 'package:hello_app/data/local/greed_model.dart';
import 'package:hello_app/theme/app_theme.dart';
import 'package:hello_app/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(GreedModelAdapter());
  box = await Hive.openBox<GreedModel>('greeds');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    // ref.listen(greedsProvider, (_, __) {
    //   router.refresh();
    // });

    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: AppThemeData.mainThemeData,
      title: 'GreedApp',
    );
  }
}
