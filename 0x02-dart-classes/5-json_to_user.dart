class User {
  int id;
  String name;
  int age;
  double height;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: (userJson['id'] as num).toInt(),
      name: userJson['name'] as String,
      age: (userJson['age'] as num).toInt(),
      height: (userJson['height'] as num).toDouble(),
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height);';
  }
}