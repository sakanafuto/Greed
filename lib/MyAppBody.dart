import 'package:flutter/material.dart';

class MyAppBody extends StatelessWidget {
  MyAppBody({Key? key, this.changeTheme}) : super(key: key);
  final changeTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      padding: EdgeInsets.only(right: 10.0, left: 10.0),

      // decoration: BoxDecoration(
      //     color: Colors.white,
      //     border: Border.all(
      //       color: Colors.lightGreen.shade500,
      //       width: 3.0,
      //     ),
      //     borderRadius: BorderRadius.circular(50),
      //     boxShadow: [
      //       BoxShadow(
      //         blurRadius: 20,
      //       )
      //     ]),
      // child: Center(
      //     child: ElevatedButton(
      //   onPressed: changeTheme,
      //   child: Text("Toggle theme"),
      // )),
    
      child: Text("sss"),
    );
  }
}
