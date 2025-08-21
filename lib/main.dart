import 'dart:async';

import 'package:ez_sauda/core/presentation/bloc/app_observer.dart';
import 'package:ez_sauda/core/presentation/widgets/app.dart';
import 'package:ez_sauda/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker/talker.dart';

void main() {
  return runZonedGuarded(() async{

    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFF000000),
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
    );
    Bloc.observer = AppObserver();
    await configureDependencies();
    runApp(const App());
  }, (exception, stacktrace) {
    getIt<Talker>().handle(exception, stacktrace);
  });
}
