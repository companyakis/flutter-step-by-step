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
            Container(width: 100, height: 95, color: Colors.purple),
            Container(width: 90, height: 75, color: Colors.green),
            Container(width: 60, height: 70, color: Colors.blueAccent),
            const Text("Three shapes"),
          ],
        ));
  }
}
