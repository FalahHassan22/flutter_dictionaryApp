import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 100),
          Center(
              child: ElevatedButton(
            onPressed: () {},
            child: const Text('Press'),
          )),
          const SizedBox(height: 30),
          const Text('Text')
        ],
      ),
    );
  }
}
