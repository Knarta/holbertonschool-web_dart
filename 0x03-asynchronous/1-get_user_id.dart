import '0-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String userData = await fetchUserData();
  Map<String, dynamic> userMap = jsonDecode(userData);
  return userMap['id'];
}