import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const AppState({
    this.isAuthorized = false,
  });

  @override
  final bool isAuthorized;
}
