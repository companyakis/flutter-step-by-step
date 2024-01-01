//create a file for our custom widgets

//custom_widgets.dart file

import 'package:flutter/material.dart';

class BlueRectangular extends StatelessWidget {
  const BlueRectangular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
        )
      ],
    );
  }
}
