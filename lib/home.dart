import 'dart:ffi';

import 'package:eduapp/input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget learningBlock() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.95,
        height: 80,
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.black,
        )),
        child: const Center(
          child: Text("Learning Flutter"),
        ),
      ),
    );
  }

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
          learningBlock(),
          const SizedBox(
            height: 15,
          ),
          learningBlock(),
        ]),
      ),
    );
  }
}
