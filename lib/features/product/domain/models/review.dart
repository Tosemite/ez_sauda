class Review {
  final String id;
  final int rating;
  final String comment;
  final String name;
  final String imageUrl;
  final String companyName;
  final DateTime createdAt;

  Review({
    required this.id,
    required this.rating,
    required this.comment,
    required this.name,
    required this.imageUrl,
    required this.companyName,
    required this.createdAt,
  });
}
