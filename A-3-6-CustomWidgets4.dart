//custom_widgets.dart file

import 'package:flutter/material.dart';

//greeting custom widget

class Greeting extends StatelessWidget {
  String ourGreeting;
  double ourFontSize;

  Greeting(this.ourGreeting, this.ourFontSize);

  @override
  Widget build(BuildContext context) {
    return Text(ourGreeting, style: TextStyle(fontSize: ourFontSize));
  }
}
