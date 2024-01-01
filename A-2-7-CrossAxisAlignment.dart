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
        //we can assume main axis alignment X cross axis alignment
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 50, height: 50, color: Colors.purple),
          Container(width: 60, height: 60, color: Colors.blueAccent),
          Container(width: 70, height: 70, color: Colors.green),
        ],
      ),
    );
  }
}
