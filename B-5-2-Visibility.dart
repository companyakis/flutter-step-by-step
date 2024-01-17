//main_page.dart file

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool visibilityControl = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Visibility(visible: visibilityControl, child: Text("Where am I?")),
            ElevatedButton(
              child: Text("Show"),
              onPressed: () {
                setState(() {
                  visibilityControl = true;
                });
              },
            ),
            ElevatedButton(
              child: Text("Hide"),
              onPressed: () {
                setState(() {
                  visibilityControl = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
