//mainpage.dart file

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter Step by Step")),
        body: Container(
          width: 300,
          height: 250,
          child: const Text("Hi there!"),
          margin: const EdgeInsets.only(top: 5, left: 45),
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.yellow,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ));
  }
}
