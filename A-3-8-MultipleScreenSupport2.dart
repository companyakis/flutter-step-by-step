//mainpage.dart file

import 'package:flutter/material.dart';
import 'package:fzt/multiple_screen_support.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter Step by Step")),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return MobileDesign();
          } else {
            return TabletDesign();
          }
        }));
  }
}
