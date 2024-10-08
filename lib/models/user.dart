class User {
  final String firstName;
  final String lastName;

  User({required this.firstName, required this.lastName});

  User.fromJson(Map<String, dynamic> jsonMap)
      : firstName = jsonMap['firstName'],
        lastName = jsonMap['lastName'];

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}
