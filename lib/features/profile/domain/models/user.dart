

class User {
  final String id;
  final String username;
  final String phoneNumber;
  final String firstName;
  final String lastName;
  // final Organization organization;
  final String imageUrl;

  const User({
    required this.id,
    required this.username,
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    // required this.organization,
    required this.imageUrl,
  });
}
