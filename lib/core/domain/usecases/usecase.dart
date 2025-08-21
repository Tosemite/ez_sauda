import 'package:ez_sauda/core/domain/models/result.dart';


abstract class UseCase<Params, Type> {
  Future<Result<Type>> call(Params params);
}

class NoParams {
  const NoParams();
}
