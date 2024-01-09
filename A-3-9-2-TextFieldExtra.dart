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
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.right,
                  maxLength: 10,
                  decoration: const InputDecoration(
                    hintText: "5xx...",
                    //labelText: "Mobile",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.greenAccent,
                    border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                    prefixIcon: Icon(Icons.phone_android),
                  ),
                  controller: controller),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    userData = controller.text;
                  });
                },
                child: const Text("Show mobile number")),
            const SizedBox(height: 10),
            Text("User moile phone: $userData"),
          ],
        ),
      ),
    );
  }
}
