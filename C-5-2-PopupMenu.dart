//main_page.dart file

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PopupMenuButton(
              child: Icon(Icons.start_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Update",
                      style: TextStyle(color: Colors.blue),
                    )),
                PopupMenuItem(
                    value: 2,
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.green),
                    ))
              ],
              onCanceled: () {},
              onSelected: (value) {
                if (value == 1) {}
                if (value == 2) {}
              },
            )
          ],
        ),
      ),
    );
  }
}
