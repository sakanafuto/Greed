// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';
// import 'package:greed/data/local/greed_state.dart';
// import 'package:greed/ui/auth/log_in_screen.dart';
// import 'package:greed/ui/component/bottom_navigation_bar.dart';
// import 'package:greed/ui/greed/add_greed_screen.dart';
// import 'package:greed/ui/greed/greed_detail_screen.dart';

// final routerProvider = Provider(
//   (ref) => GoRouter(
//     initialLocation: '/login',
//     routes: [
//       GoRoute(
//         name: 'login',
//         path: '/login',
//         pageBuilder: (context, state) => MaterialPage(
//           key: state.pageKey,
//           child: const LogInScreen(),
//         ),
//       ),
//       GoRoute(
//         name: 'home',
//         path: '/',
//         pageBuilder: (context, state) => MaterialPage(
//           key: state.pageKey,
//           child: BottomNavigationBarView(),
//         ),
//         routes: [
//           GoRoute(
//             name: 'list',
//             path: 'list/:name',
//             pageBuilder: (context, state) {
//               GreedState? greed = ref
//                   .read(greedsProvider.notifier)
//                   .greedFromName(state.params['name']!);
//               if (greed == null) {
//                 return MaterialPage(
//                   key: state.pageKey,
//                   child: Scaffold(
//                     appBar: AppBar(
//                       title: const Text('ページが存在しません'),
//                     ),
//                     body: Container(),
//                   ),
//                 );
//               }
//               return MaterialPage(
//                 key: state.pageKey,
//                 child: GreedDetailScreen(
//                   greed: greed,
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       GoRoute(
//         name: 'addGreed',
//         path: '/addGreed',
//         pageBuilder: (context, state) => MaterialPage(
//           key: state.pageKey,
//           child: AddGreedScreen(),
//         ),
//       ),
//     ],
//     errorPageBuilder: (context, state) => MaterialPage(
//       key: state.pageKey,
//       child: Scaffold(
//         body: Center(
//           child: Text(
//             state.error.toString(),
//             style: TextStyle(color: Theme.of(context).colorScheme.error),
//           ),
//         ),
//       ),
//     ),
//   ),
// );
