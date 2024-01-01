//mainpage.dart file

import 'package:flutter/material.dart';
import 'package:fzt/custom_widgets.dart';

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
            Greeting(ourGreeting: "Hi there", ourFontSize: 40.0),
            const SizedBox(height: 35),
            Greeting(ourGreeting: "How are you?", ourFontSize: 20.0)
          ],
        ),
      ),
    );
  }
}
