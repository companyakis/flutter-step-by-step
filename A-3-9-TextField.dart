import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  var controller = TextEditingController();
  String userData = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Field Usage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                  decoration: const InputDecoration(
                      hintText: "Give some information..."),
                  controller: controller),
            ),
            const SizedBox(height: 15),
            TextButton(
                onPressed: () {
                  setState(() {
                    userData = controller.text;
                  });
                },
                child: const Text("Show User Data")),
            const SizedBox(height: 10),
            Text("User data: $userData"),
          ],
        ),
      ),
    );
  }
}
