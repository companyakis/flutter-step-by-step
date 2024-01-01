//mainpage.dart file

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    
    //screen info
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Step by Step")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight / 100),
            child: SizedBox(
                width: screenWidth / 2,
                height: screenHeight / 4,
                child: Image.asset("images/moon.jpg")),
          ),
          Container(
              width: screenWidth,
              height: screenHeight / 6,
              color: Colors.greenAccent),
          Text(
            "Hi there",
            style: TextStyle(fontSize: screenWidth / 10),
          ),
        ],
      ),
    );
  }
}
