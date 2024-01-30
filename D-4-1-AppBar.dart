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
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("DeFi App",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Text("Just Use",
                style: TextStyle(color: Colors.white, fontSize: 15)),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
            tooltip: "Services",
            onPressed: () {},
            icon: const Icon(Icons.monetization_on_outlined)),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text("Need Help?",
                  style: TextStyle(color: Colors.white))),
          PopupMenuButton(
            child: const Icon(Icons.update_disabled_outlined),
            itemBuilder: (context) => [
              const PopupMenuItem(value: 1, child: Text("Update")),
              const PopupMenuItem(value: 2, child: Text("Cancel")),
            ],
            onSelected: (i) {
              if (i == 1) {}
              if (i == 2) {}
            },
          ),
        ],
      ),
      body: const Center(),
    );
  }
}
