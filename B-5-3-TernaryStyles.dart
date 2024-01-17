//main_page.dart file

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool controlVariable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              controlVariable
                  ? "Out of sight, out of mind"
                  : "A barking dog never bites",
              style: TextStyle(
                color: controlVariable ? Colors.green : Colors.blue,
                fontSize: controlVariable ? 30 : 40,
                fontWeight: controlVariable ? FontWeight.bold : FontWeight.w600,
              ),
            ),
            ElevatedButton(
              child: Text("Proverb 1"),
              onPressed: () {
                setState(() {
                  controlVariable = true;
                });
              },
            ),
            ElevatedButton(
              child: Text("Proverb 2"),
              onPressed: () {
                setState(() {
                  controlVariable = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
