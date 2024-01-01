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
          Container(width: 110, height: 110, color: Colors.blueAccent),
          //spacing
          const SizedBox(width: 12),
          Container(width: 70, height: 70, color: Colors.blueAccent),
          //change container's behaviour
          SizedBox(
              width: 90,
              height: 250,
              child: Container(width: 50, height: 50, color: Colors.green)),
        ],
      ),
    );
  }
}
