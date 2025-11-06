import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/features/profile/domain/models/user.dart';
import 'package:ez_sauda/features/profile/domain/use_cases/fetch_current_user_use_case.dart';
import 'package:ez_sauda/features/profile/presentation/blocs/profile_event.dart';
import 'package:ez_sauda/features/profile/presentation/blocs/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required this.fetchCurrentUserUseCase,
  }) : super(ProfileState()) {
    on<ProfileFetched>(_fetchCurrentUser);
    add(ProfileFetched());
  }

  final FetchCurrentUserUseCase fetchCurrentUserUseCase;

  Future<void> _fetchCurrentUser(
    ProfileFetched event,
    Emitter<ProfileState> emit,
  ) async {
    final result = await fetchCurrentUserUseCase();
    switch (result) {
      case SuccessResult<User>(value: final user):
        emit(
          state.copyWith(
            user: ValueSuccess(user),
          ),
        );
      case ErrorResult<User>(failure: final failure):
        emit(
          state.copyWith(
            user: ValueFailure(failure),
          ),
        );
    }
  }
}
