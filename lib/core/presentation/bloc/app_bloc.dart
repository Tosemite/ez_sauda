import 'dart:async';

import 'package:ez_sauda/core/presentation/bloc/app_event.dart';
import 'package:ez_sauda/core/presentation/bloc/app_state.dart';
import 'package:ez_sauda/features/auth/domain/use_cases/logout_use_case.dart';
import 'package:ez_sauda/features/auth/domain/use_cases/observe_is_authenticated_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required this.observeIsAuthenticatedUseCase,
    required this.logoutUseCase,
  }) : super(const AppState()) {
    on<AppInit>(_initialize);
    on<AppLogout>(_logout);
    add(AppInit());
  }

  final ObserveIsAuthenticatedUseCase observeIsAuthenticatedUseCase;
  final LogoutUseCase logoutUseCase;

  Future<void> _initialize(AppInit _, Emitter<AppState> emit) async {
    return emit.forEach(
      observeIsAuthenticatedUseCase.observe(),
      onData: _onAuthorizedChanged,
    );
  }

  AppState _onAuthorizedChanged(bool isLoggedIn) {
    return state.copyWith(
      isAuthorized: isLoggedIn,
    );
  }

  Future<void> _logout(AppLogout _, Emitter<AppState> emit) async{
    await logoutUseCase();
  }
}
