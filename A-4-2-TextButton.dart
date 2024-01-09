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
      appBar: AppBar(title: const Text("Flutter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Sample Text Button",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              style: TextButton.styleFrom(
                shadowColor: Colors.blue,
                elevation: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
