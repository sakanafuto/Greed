import 'package:flutter/material.dart';
import 'package:hello_app/MyAppBody.dart';
import 'app.dart';

class TodoListPage extends StatelessWidget {
  final appTitle = MyAppState("TodoTitle");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appTitle,
      ),
      body: const Center(
        child: Text('リスト一覧画面'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return TodoAddPage();
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("リスト追加画面（クリックで戻る）"),
        ),
      ),
    );
  }
}
