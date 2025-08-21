import 'package:injectable/injectable.dart';

abstract class RepositoryConfig {
  String get baseUrl;
}

@prod
@Singleton(as: RepositoryConfig)
class RepositoryConfigProd implements RepositoryConfig {
  @override
  final String baseUrl = 'http://185.253.8.123:8080/api/v1';
}

@dev
@Singleton(as: RepositoryConfig)
class RepositoryConfigDev implements RepositoryConfig {
  @override
  final String baseUrl = 'http://185.253.8.123:8080/api/v1';
}