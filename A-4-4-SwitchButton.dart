import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  bool switchControl = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Switch Button")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Switch current info: $switchControl"),
          const SizedBox(height: 20),
          Switch(
              value: switchControl,
              activeColor: Colors.blue,
              activeTrackColor: Colors.pink,
              inactiveTrackColor: Colors.black,
              inactiveThumbColor: Colors.grey,
              onChanged: (data) {
                setState(() {
                  switchControl = data;
                });
              })
        ]),
      ),
    );
  }
}
