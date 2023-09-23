import 'package:flutter/material.dart';

class InputData extends StatefulWidget {
  const InputData({super.key});

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
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
              onPressed: () {},
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
