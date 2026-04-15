import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String user_password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required this.user_password,
  }) : super(password: user_password);

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: (userJson['id'] as num?)?.toInt() ?? 0,
      name: userJson['name']?.toString() ?? '',
      age: (userJson['age'] as num?)?.toInt() ?? 0,
      height: (userJson['height'] as num?)?.toDouble() ?? 0.0,
      user_password: userJson['user_password']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  @override
  String toString() {
    password = user_password;
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
