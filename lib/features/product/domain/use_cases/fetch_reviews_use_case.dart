import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/product/domain/models/fetch_reviews_response.dart';
import 'package:ez_sauda/features/product/domain/models/review.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchReviewsUseCase
    implements UseCase<FetchReviewsParams, FetchReviewsResponse> {
  const FetchReviewsUseCase();

  @override
  Future<Result<FetchReviewsResponse>> call(FetchReviewsParams params) async {
    await Future.delayed(Duration(seconds: 1));
    //TODO remove mocks
    return SuccessResult(
      FetchReviewsResponse(
        review: [
          Review(
            id: '1',
            rating: 3,
            comment:
            'Продукт качественный, отправили вовремя! Спасибо дистрибьютору за товар!',
            name: 'Карим',
            imageUrl:
            'https://images.pexels.com/photos/32935727/pexels-photo-32935727.jpeg?_gl=1*ifxe3c*_ga*NTU3MjMyMDQzLjE3NTMyNjM2ODU.*_ga_8JE65Q40S6*czE3NTMyNjM2ODUkbzEkZzEkdDE3NTMyNjM3MjEkajI0JGwwJGgw',
            companyName: 'ERTY',
            createdAt: DateTime.now(),
          ),
          Review(
            id: '1',
            rating: 5,
            comment:
            'Продукт качественный, отправили вовремя! Спасибо дистрибьютору за товар!',
            name: 'Карим',
            imageUrl:
            'https://images.pexels.com/photos/32935727/pexels-photo-32935727.jpeg?_gl=1*ifxe3c*_ga*NTU3MjMyMDQzLjE3NTMyNjM2ODU.*_ga_8JE65Q40S6*czE3NTMyNjM2ODUkbzEkZzEkdDE3NTMyNjM3MjEkajI0JGwwJGgw',
            companyName: 'ERTY',
            createdAt: DateTime.now(),
          ),
          Review(
            id: '1',
            rating: 1,
            comment:
            'Продукт качественный, отправили вовремя! Спасибо дистрибьютору за товар!',
            name: 'Карим',
            imageUrl:
            'https://images.pexels.com/photos/32935727/pexels-photo-32935727.jpeg?_gl=1*ifxe3c*_ga*NTU3MjMyMDQzLjE3NTMyNjM2ODU.*_ga_8JE65Q40S6*czE3NTMyNjM2ODUkbzEkZzEkdDE3NTMyNjM3MjEkajI0JGwwJGgw',
            companyName: 'ERTY',
            createdAt: DateTime.now(),
          ),
          Review(
            id: '1',
            rating: 4,
            comment:
            'Продукт качественный, отправили вовремя! Спасибо дистрибьютору за товар!',
            name: 'Карим',
            imageUrl:
            'https://images.pexels.com/photos/32935727/pexels-photo-32935727.jpeg?_gl=1*ifxe3c*_ga*NTU3MjMyMDQzLjE3NTMyNjM2ODU.*_ga_8JE65Q40S6*czE3NTMyNjM2ODUkbzEkZzEkdDE3NTMyNjM3MjEkajI0JGwwJGgw',
            companyName: 'ERTY',
            createdAt: DateTime.now(),
          ),
          Review(
            id: '1',
            rating: 5,
            comment:
            'Продукт качественный, отправили вовремя! Спасибо дистрибьютору за товар!',
            name: 'Карим',
            imageUrl:
            'https://images.pexels.com/photos/32935727/pexels-photo-32935727.jpeg?_gl=1*ifxe3c*_ga*NTU3MjMyMDQzLjE3NTMyNjM2ODU.*_ga_8JE65Q40S6*czE3NTMyNjM2ODUkbzEkZzEkdDE3NTMyNjM3MjEkajI0JGwwJGgw',
            companyName: 'ERTY',
            createdAt: DateTime.now(),
          ),
        ],
        total: 5,
        averageGrade: 3.6,
        fives: 2,
        fours: 1,
        threes: 1,
        twos: 0,
        ones: 1,
      ),
    );
  }
}

class FetchReviewsParams {
  final String productId;
  final int page;

  FetchReviewsParams(
    this.productId,
    this.page,
  );
}
