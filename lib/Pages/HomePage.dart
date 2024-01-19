import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  String _defintion = '';
  @override
  void setState(VoidCallback fn) {
    _controller;
    super.setState(fn);
  }

  final apiUrl = 'https://api.dictionaryapi.dev/api/v2/entries/en/door';
  Future<void> _fetchDefintion() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      final _word = data[0]['word'];
      setState(() {
        _defintion = _word;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          TextField(
            controller: _controller,
          ),
          const SizedBox(height: 100),
          Center(
              child: ElevatedButton(
            onPressed: _fetchDefintion,
            child: const Text('Press'),
          )),
          const SizedBox(height: 30),
          Text(_controller.text)
        ],
      ),
    );
  }
}
