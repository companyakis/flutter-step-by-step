import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
//radio button variable
  int radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Radio Button")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Which Smart Contract Language?"),
          const SizedBox(height: 15),
          RadioListTile(
              title: const Text("Solidity"),
              value: 1,
              groupValue: radioValue,
              activeColor: Colors.blue,
              onChanged: (int? data) {
                setState(() {
                  radioValue = data!;
                });
              }),
          RadioListTile(
              title: const Text("Move"),
              value: 2,
              groupValue: radioValue,
              activeColor: Colors.green,
              onChanged: (int? data) {
                setState(() {
                  radioValue = data!;
                });
              })
        ]),
      ),
    );
  }
}
