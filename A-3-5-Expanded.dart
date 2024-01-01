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
      body: Row(
        children: [
          Column(
            children: [
              Expanded(
                  child: Container(
                      width: 110, height: 110, color: Colors.blueAccent)),
              Container(width: 90, height: 70, color: Colors.green)
            ],
          ),
          Expanded(
              flex: 60,
              child: Container(width: 90, height: 120, color: Colors.black45)),
          Expanded(
              flex: 40,
              child: Container(width: 70, height: 70, color: Colors.green)),
        ],
      ),
    );
  }
}
