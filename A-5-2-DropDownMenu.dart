import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var langList = <String>[];

  String selectedLang = "Python";

  @override
  void initState() {
    super.initState();
    langList.add("Python");
    langList.add("Solidity");
    langList.add("Mojo");
    langList.add("Move");
    langList.add("TypeScript");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DropDown Menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedLang,
              items: langList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    "Language : $value",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                  ),
                );
              }).toList(),
              icon: Icon(Icons.arrow_drop_down),
              onChanged: (String? selectedData) {
                setState(() {
                  selectedLang = selectedData!;
                });
              },
            ),
            SizedBox(height: 20),
            Text("Selected Language : $selectedLang"),
          ],
        ),
      ),
    );
  }
}
