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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 50, height: 50, color: Colors.black38),
            Container(width: 50, height: 50, color: Colors.green),
            Container(width: 50, height: 50, color: Colors.blueAccent),
            const Text("I'm here!"),
            Row(mainAxisAlignment: MainAxisAlignment.start, 
            children: [
              Container(width: 60, height: 60, color: Colors.purple),
              Container(width: 60, height: 60, color: Colors.yellow),
              Container(width: 60, height: 60, color: Colors.pink),
            ]),
          ],
        ));
  }
}
