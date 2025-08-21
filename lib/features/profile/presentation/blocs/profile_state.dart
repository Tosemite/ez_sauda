import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/features/profile/domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState({
    this.user = const ValueInitial(),
  });

  @override
  final ValueState<User> user;
}
