import 'package:ez_sauda/features/product/domain/models/review.dart';

class FetchReviewsResponse {
  final List<Review> review;
  final int total;
  final double averageGrade;
  final int fives;
  final int fours;
  final int threes;
  final int twos;
  final int ones;

  FetchReviewsResponse({
    required this.review,
    required this.total,
    required this.averageGrade,
    required this.fives,
    required this.fours,
    required this.threes,
    required this.twos,
    required this.ones,
  });
}
