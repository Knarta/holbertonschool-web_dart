import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  var userData = await fetchUserData();
  Map<String, dynamic> userMap = jsonDecode(userData);
  return userMap['id'];
}