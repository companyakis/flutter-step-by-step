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
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Need help?")));
                },
                child: Text("Default Snack Bar")),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Are you sure?"),
                    action: SnackBarAction(
                        label: "Yes",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Ok. No problem!")));
                        }),
                  ));
                },
                child: Text("Action SnackBar")),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      "Ok. No problem!",
                      style: TextStyle(color: Colors.green),
                    ),
                    backgroundColor: Colors.blueGrey,
                    duration: Duration(seconds: 6),
                    action: SnackBarAction(
                        label: "Try again!",
                        textColor: Colors.purple,
                        onPressed: () {}),
                  ));
                },
                child: Text("Customized SnackBar")),
          ],
        ),
      ),
    );
  }
}
