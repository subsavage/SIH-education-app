import 'package:eduapp/backend/backend.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InputData extends StatefulWidget {
  const InputData({super.key});

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  final _subjectcontroller = TextEditingController();
  final _topiccontroller = TextEditingController();
  final _optionalcontroller = TextEditingController();

  String template =
      "I will provide you only the subject, topic and some optional information. You have to fill them in the following prompt." +
          "I want to learn (subject name), (topic), use plugins like voxscript, browserop and give me 3 best youtube videos that will help me + (optional information)";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(),
            ),
            const Text("Input Field"),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _subjectcontroller,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.blue, // Set border color
                      width: 2.0, // Set border width
                    ),
                  ),
                  labelText: "Subject"),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _topiccontroller,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.blue, // Set border color
                      width: 2.0, // Set border width
                    ),
                  ),
                  labelText: "Topic"),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _optionalcontroller,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.blue, // Set border color
                      width: 2.0, // Set border width
                    ),
                  ),
                  labelText: "Others(Optional)"),
            ),
            const SizedBox(
              height: 30,
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Colors.blueAccent,
            //   ),
            //   child: const Text(
            //     "Submit",
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            ElevatedButton(
              onPressed: () async {
                try {
                  var result = await fetchData(template +
                      " " +
                      _subjectcontroller.text +
                      " " +
                      _topiccontroller.text +
                      " " +
                      _optionalcontroller.text);
                  print(result);
                  if (result.containsKey('error')) {
                    print("An error occurred: ${result['error']}");
                  } else {
                    print("Response: ${result['response']}");
                  }
                } catch (e) {
                  print("An error occurred: $e");
                }
              },
              child: const Text("Submit"),
            ),

            Flexible(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      )),
    );
  }
}
