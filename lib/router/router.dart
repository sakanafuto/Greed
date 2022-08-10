import 'package:hello_app/app.dart';
import 'package:hello_app/component/bottom_navigation_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => BottomNavigationBarView(),
        ),
        GoRoute(
          path: '/app',
          builder: (context, state) => GreedApp(),
        ),  
      ],
  ),
);
