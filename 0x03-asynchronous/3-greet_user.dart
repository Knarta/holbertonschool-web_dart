import 'dart:convert';

import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final Map<String, dynamic> user = jsonDecode(userData);
    return 'Hello ${user['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final isUser = await checkCredentials();
    print('There is a user: $isUser');

    if (isUser) {
      return greetUser();
    }
    return 'Wrong credentials';
  } catch (error) {
    return 'error caught: $error';
  }
}
