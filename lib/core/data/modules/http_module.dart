import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:ez_sauda/core/data/modules/logged_client.dart';
import 'package:ez_sauda/core/data/modules/prod_client.dart';

@module
abstract class HttpModule {
  @singleton
  @prod
  http.Client get prodClient {
    return ProdClient();
  }

  @singleton
  @dev
  http.Client get devClient {
    return LoggedClient();
  }
}
