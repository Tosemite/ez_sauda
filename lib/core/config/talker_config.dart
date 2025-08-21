import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

@module
abstract class TalkerConfig {
  @singleton
  Talker get talker {
    final talker = TalkerFlutter.init(
      logger: TalkerLogger(
        settings: TalkerLoggerSettings(
          colors: {
            LogLevel.debug: AnsiPen()..xterm(49),
          },
        ),
      ),
    );

    if (defaultTargetPlatform == TargetPlatform.iOS) {
      ansiColorDisabled = true;
    }

    return talker;
  }
}
