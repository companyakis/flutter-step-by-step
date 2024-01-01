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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 10),
            Container(width: 110, height: 110, color: Colors.blueAccent),
            const Spacer(flex: 20),
            Container(width: 90, height: 120, color: Colors.black45),
            const Spacer(flex: 70),
            Container(width: 70, height: 70, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
