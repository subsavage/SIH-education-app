import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> fetchData(String prompt) async {
  var url = 'http://10.0.0.22:8000/ask/';
  print(prompt);
  final response = await http.post(
    Uri.parse(url),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'prompt': prompt}),
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    return {'error': 'Failed to fetch data'};
  }
}
