import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ez_sauda/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies({String environment = Environment.prod}) async{
  assert(() {
    environment = Environment.dev;
    return true;
  }());
 await getIt.init(environment: environment);
}
