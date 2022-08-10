import 'package:flutter/material.dart';

class GreedAppBody extends StatelessWidget {
  const GreedAppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.all(40.0),
          padding: const EdgeInsets.all(80.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 20,
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("sss"),
              Row(
                children: const [Text("lskdjf")],
              ),
              // const CircularProgressIndicator(),
              // const LinearProgressIndicator(),
            ],
          )),
    );
  }
}
