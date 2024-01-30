//main_page.dart file

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool anySearch = false;
  var tfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: anySearch
            ? TextField(
                controller: tfController,
                decoration: InputDecoration(hintText: "Search area..."),
                onChanged: (data) {
                  setState(() {});
                },
              )
            : const Text("Search App"),
        actions: [
          anySearch
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      anySearch = false;
                    });
                  },
                  icon: const Icon(Icons.cancel))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      anySearch = true;
                    });
                  },
                  icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Column(
            //children: [Text("Searh item: $tfController.text")],
            ),
      ),
    );
  }
}
