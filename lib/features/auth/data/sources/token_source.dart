import 'package:injectable/injectable.dart';

abstract class TokenSource {
  String? getToken();
  void setToken(String token);
  void clearToken();
}

@Singleton(as: TokenSource)
class TokenSourceImpl implements TokenSource {
  TokenSourceImpl();

  String? _token;

  @override
  String? getToken() {
    return _token;
  }

  @override
  void setToken(String token) {
    _token = token;
  }

  @override
  void clearToken() {
    _token = null;
  }
}