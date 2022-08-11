import 'package:flutter/material.dart';
import 'package:hello_app/app.dart';
import 'package:hello_app/component/bottom_navigation_bar.dart';
import 'package:hello_app/model/greed_list_model.dart';
import 'package:hello_app/model/greed_model.dart';
import 'package:hello_app/screen/greed_detail_screen.dart';
import 'package:hello_app/screen/log_in_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

final greedDetailProvider = Provider<GreedList>((ref) => GreedList());

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'login',
        path: '/',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const LogInScreen(),
        ),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => BottomNavigationBarView(),
      ),
      GoRoute(
        path: '/greed',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: GreedApp(),
        ),
        routes: [
          GoRoute(
            name: 'detail',
            path: 'detail/:id',
            pageBuilder: (context, state) {
              Greed? greed = ref
                  .watch(greedDetailProvider)
                  .greedFromId(state.params['id']!);
              if (greed == null) {
                return MaterialPage(
                  key: state.pageKey,
                  child: Scaffold(
                    appBar: AppBar(
                      title: const Text('ページが存在しません'),
                    ),
                    body: Container(),
                  ),
                );
              }
              return MaterialPage(
                key: state.pageKey,
                child: GreedDetailScreen(
                  greed: greed,
                ),
              );
            },
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(
            state.error.toString(),
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
        ),
      ),
    ),
  ),
);
