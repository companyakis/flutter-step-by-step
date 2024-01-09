import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  String helpMessage = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fab")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$helpMessage",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    helpMessage = "";
                  });
                },
                child: Text("Clear Screen Message",
                    style: TextStyle(color: Colors.green))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: "Help",
          child: const Icon(Icons.help),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          onPressed: () {
            setState(() {
              helpMessage = "Help me!";
            });
          }),
    );
  }
}
