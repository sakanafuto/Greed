import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログインページ'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('ログイン'),
          onPressed: () {
            context.go('/');
          },
        ),
      ),
    );
  }
}