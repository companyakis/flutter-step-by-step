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
            //we added coding space ((){}())
            
            (() {
              if (controlVariable) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.pages_sharp)],
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.access_alarm)],
                );
              }
            }()),

            ElevatedButton(
              child: Text("1"),
              onPressed: () {
                setState(() {
                  controlVariable = true;
                });
              },
            ),
            ElevatedButton(
              child: Text("2"),
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
