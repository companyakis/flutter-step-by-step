import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
//Progress Bar variable
  bool progressBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Progress Bar")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Visibility(
            visible: progressBar,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text("Start"),
                  onPressed: () {
                    setState(() {
                      progressBar = true;
                    });
                  },
                ),
                ElevatedButton(
                  child: const Text("Stop"),
                  onPressed: () {
                    setState(() {
                      progressBar = false;
                    });
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
