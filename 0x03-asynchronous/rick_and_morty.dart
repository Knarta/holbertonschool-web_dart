import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final url = "https://rickandmortyapi.com/api/character";
    final res = await http.get(Uri.parse(url));

    if (res.statusCode != 200) {
      print("error caught: ${res.statusCode}");
      return;
    }

    final data = jsonDecode(res.body);

    for (final char in data['results']) {
      print(char['name']);
    }
  } catch (error) {
    print('error caught: $error');
  }
}
