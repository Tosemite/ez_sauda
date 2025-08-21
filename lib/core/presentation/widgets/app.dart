import 'package:ez_sauda/core/presentation/bloc/app_bloc.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ez_sauda/core/presentation/widgets/app_view.dart';
import 'package:ez_sauda/injector.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AppBloc>()),
        BlocProvider(create: (_) => getIt<CartBloc>()),
      ],
      child: MediaQuery.fromView(
        view: View.of(context),
        child: AppView(),
      ),
    );
  }
}
