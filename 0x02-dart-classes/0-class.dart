class User {
  String name = '';

  User();
  User.withName(this.name);

  String showName() {
    return 'Hello $name';
  }
}