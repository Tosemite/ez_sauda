import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/bloc/base_state.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CartWrapperScreen extends StatelessWidget {
  const CartWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context, widget) {
        return BlocListener<CartBloc, CartState>(
          listenWhen: (prev, curr) =>
              prev.orderCreateState != curr.orderCreateState,
          listener: (context, state) {
            if (state.orderCreateState is BaseSuccess) {
              context.router.popUntilRoot();
              context.router.navigate(
                CartOrderSuccessRoute(),
              );
            }
          },
          child: widget,
        );
      },
    );
  }
}
