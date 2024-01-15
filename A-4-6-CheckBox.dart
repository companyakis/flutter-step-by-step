import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //be happy always:)
  bool areYouHappy = false;
  bool areYouMarried = false;
  bool areYouYoung = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Checkbox")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CheckboxListTile(
              title: const Text("Happiness"),
              value: areYouHappy,
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.green,
              activeColor: Colors.purple,
              onChanged: (bool? data) {
                setState(() {
                  areYouHappy = data!;
                });
              }),
          CheckboxListTile(
              title: const Text("Marital Status"),
              value: areYouMarried,
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.blue,
              activeColor: Colors.black,
              onChanged: (bool? data) {
                setState(() {
                  areYouMarried = data!;
                });
              }),
          CheckboxListTile(
              title: const Text("Age"),
              value: areYouYoung,
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.pink,
              activeColor: Colors.orange,
              onChanged: (bool? data) {
                setState(() {
                  areYouYoung = data!;
                });
              }),
          const SizedBox(height: 10),
          Text("Are you happy: $areYouHappy"),
          const SizedBox(height: 10),
          Text("Are you married: $areYouMarried"),
          const SizedBox(height: 10),
          Text("Are you young: $areYouYoung"),
        ]),
      ),
    );
  }
}
