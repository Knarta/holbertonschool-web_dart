import '0-util.dart';

Future<String> getUserId() async {
  String userData = await fetchUserData();
  return userData;
}

Future<void> main() async {
  String userId = await getUserId();
  print("User ID: $userId");
}