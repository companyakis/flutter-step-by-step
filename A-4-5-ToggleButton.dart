import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var toogles = [true, false, false, true];
  int selectedToggleIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Toggle Button")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
              "The last selected toogle is ${selectedToggleIndex + 1}. toogle"),
          SizedBox(height: 15),
          ToggleButtons(
            children: [
              Icon(Icons.looks_one),
              Icon(Icons.looks_two),
              Icon(Icons.looks_3),
              Icon(Icons.looks_4),
            ],
            isSelected: toogles,
            color: Colors.blue,
            selectedColor: Colors.red,
            fillColor: Colors.lightGreen,
            onPressed: (int i) {
              selectedToggleIndex = i;
              setState(() {
                toogles[i] = !toogles[i];
              });
            },
          ),
        ]),
      ),
    );
  }
}
