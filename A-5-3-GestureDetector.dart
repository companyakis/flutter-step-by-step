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
      appBar: AppBar(title: const Text("Gesture Detector")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                width: 300,
                height: 250,
                color: Colors.blue,
              ),
              onTap: () {
                print("One-time tapped");
              },
              onDoubleTap: () {
                print("Double tapped");
              },
              onLongPress: () {
                print("Long pressed");
              },
            ),
          ],
        ),
      ),
    );
  }
}
