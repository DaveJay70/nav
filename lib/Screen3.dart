import 'package:flutter/material.dart';

import 'Screen1.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text("Screen 3")),),
        body: Center(
          child: ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>Screen1()));
          }, child: Text("Screen1"),),
        )
    );
  }
}
