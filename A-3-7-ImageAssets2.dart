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
          children: [
            Image.asset("images/moon.jpg"),
            const SizedBox(height: 15),
            const Text("Moon Picture"),
          ],
        ),
      ),
    );
  }
}
