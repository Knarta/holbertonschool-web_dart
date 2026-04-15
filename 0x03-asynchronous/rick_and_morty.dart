import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String> printRmCharacters() async {
  try {
    String? url = 'https://rickandmortyapi.com/api/character';

    while (url != null) {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode != 200) {
        throw Exception('Request failed with status: ${response.statusCode}');
      }

      final Map<String, dynamic> data = jsonDecode(response.body);
      final List<dynamic> characters = data['results'];

      for (final character in characters) {
        print(character['name']);
      }

      url = data['info']['next'];
    }

    return '';
  } catch (error) {
    return 'error caught: $error';
  }
}
