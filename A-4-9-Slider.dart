import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
//Slider variable
  double years = 2024.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slider")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Selected year: ${years.toInt()}"),
          Slider(
            max: 3000.0,
            min: 0.0,
            value: years,
            activeColor: Colors.green,
            inactiveColor: Colors.blue,
            onChanged: (double y) {
              setState(() {
                years = y;
              });
            },
          ),
        ]),
      ),
    );
  }
}
