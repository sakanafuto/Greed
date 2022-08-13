import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_app/model/greed_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddGreedScreen extends HookConsumerWidget {
  AddGreedScreen({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greedModel = ref.read(greedModelProvider);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => context.go('/'),
              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  autofocus: true,
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: 'ほしいもの',
                    prefixIcon: Icon(Icons.chair),
                    // contentPadding: EdgeInsets.only(left: 8.0),
                    // enabledBorder: InputBorder.none,
                    // focusedBorder: InputBorder.none,
                    isDense: true,
                  ),
                  textInputAction: TextInputAction.next,
                ),
                TextField(
                  controller: _priceController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    hintText: '金額',
                    prefixIcon: Icon(Icons.money),
                    // contentPadding: EdgeInsets.only(left: 8.0),
                    // enabledBorder: InputBorder.none,
                    // focusedBorder: InputBorder.none,
                    isDense: true,
                  ),
                  textInputAction: TextInputAction.next,
                ),
                TextField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(
                    label: Text('ほしい理由は？'),
                    hintText: '理由を入力',
                    prefixIcon: Icon(Icons.chair),
                    contentPadding: EdgeInsets.only(top: 16.0),
                    // enabledBorder: InputBorder.none,
                    // focusedBorder: InputBorder.none,
                    isDense: true,
                  ),
                  textInputAction: TextInputAction.done,
                ),
                ElevatedButton(
                  onPressed: () => {
                    greedModel.addGreed(
                      _nameController.text,
                      int.parse(_priceController.text),
                      _descriptionController.text,
                    ),
                    _nameController.text = "",
                    _priceController.text = "",
                    _descriptionController.text = "",
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.primaryContainer,
                    onPrimary: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text(
                    "ほしいものを追加",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
