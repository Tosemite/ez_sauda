import 'package:dio/dio.dart';
import 'package:ez_sauda/features/auth/data/sources/token_source.dart';
import 'package:injectable/injectable.dart';

@Named('auth-interceptor')
@LazySingleton(as: Interceptor)
class AuthInterceptor extends Interceptor {
  final TokenSource _tokenSource;

  AuthInterceptor(this._tokenSource);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final token =  _tokenSource.getToken();

    if (token?.isNotEmpty ?? false) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
