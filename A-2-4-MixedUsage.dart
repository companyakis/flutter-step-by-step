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
          children: [
            Row(children: [
              Container(width: 50, height: 50, color: Colors.blue),
              Container(width: 60, height: 55, color: Colors.yellowAccent),
            ]),
            Column(children: [
              Container(width: 50, height: 50, color: Colors.green),
              Container(width: 50, height: 50, color: Colors.purple),
              Container(width: 50, height: 50, color: Colors.black),
            ]),
            Stack(children: [
              Container(width: 100, height: 100, color: Colors.blue),
              Container(width: 80, height: 80, color: Colors.pink),
              Container(width: 60, height: 60, color: Colors.brown),
            ]),
          ],
        ));
  }
}
