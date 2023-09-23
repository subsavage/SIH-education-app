import 'package:eduapp/input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EduApp'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          bottom: 20,
        ),
        child: FloatingActionButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InputData(),
            ),
          ),
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
      body: Center(
        child: Column(children: [
          Center(
            child: Text("Hello"),
          )
        ]),
      ),
    );
  }
}
