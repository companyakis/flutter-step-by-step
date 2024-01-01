//multiple_screen_support.dart file

import 'package:flutter/material.dart';

//tablet screen
class TabletDesign extends StatelessWidget {
  const TabletDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset("images/stevejobs@3x.png"), //bigger picture!
      const Text("Apple and Steve jobs", style: TextStyle(fontSize: 32)),
    ]));
  }
}

//mobile phone screen
class MobileDesign extends StatelessWidget {
  const MobileDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset("images/stevejobs@1x.png"),
      const Text("Steve jobs", style: TextStyle(fontSize: 18)),
    ]));
  }
}
