import 'dart:convert';
import 'package:injectable/injectable.dart';

@module
abstract class EncodingModule {
  @singleton
  Encoding get encoding {
    return const Utf8Codec();
  }
}
