import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class SecureStorageModule {
  @singleton
  @preResolve
  Future<FlutterSecureStorage> get preferences async {
    return const FlutterSecureStorage(
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.unlocked,
      ),
      aOptions: AndroidOptions(
        resetOnError: true,
      ),
    );
  }
}
