class User {
  final String name;
  final String country;
  final String imageUrl;

  User({required this.name, required this.country, required this.imageUrl});

  @override
  String toString() {
    return 'User("name:$name, country:$country, imageUrl: Null")';
  }
}
