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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(width: 110, height: 110, color: Colors.blueAccent),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Container(width: 90, height: 120, color: Colors.black45),
          ),
          Container(width: 70, height: 70, color: Colors.green),
        ],
      ),
    );
  }
}
