//main_page.dart file

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //form variables
  var formKey = GlobalKey<FormState>();
  var userNameController = TextEditingController();
  var userPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: userNameController,
                      decoration: InputDecoration(
                          label: const Text("User Name"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      validator: (userInput) {
                        if (userInput!.isEmpty) {
                          return "Enter user name please";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: userPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text("User password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      validator: (userInput) {
                        if (userInput!.isEmpty) {
                          return "Enter user password please";
                        }
                        if (userInput.length < 8) {
                          return "Password length can't be less than eight characters";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          bool controlResult = formKey.currentState!.validate();

                          if (controlResult) {}

                          userNameController.text = "";
                          userPasswordController.text = "";
                        },
                        child: const Text("Sign-in")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
