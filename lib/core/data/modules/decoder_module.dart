import 'dart:convert';
import 'package:injectable/injectable.dart';

@module
abstract class DecoderModule {
  @singleton
  Converter<List<int>, String> get decoder {
    return const Utf8Decoder();
  }
}
