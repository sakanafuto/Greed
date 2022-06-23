import 'package:flutter/material.dart';

class MyAppBody extends StatelessWidget {
  const MyAppBody({Key? key, required String title, required String appTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(40.0),
        padding: const EdgeInsets.all(80.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.lightGreen.shade500,
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("sss"),
            Row(
              children: [Text("lskdjf"), Text("Donkey Kong")],
            )
            // CircularProgressIndicator(),
            // LinearProgressIndicator(),
          ],
        ));
  }
}
