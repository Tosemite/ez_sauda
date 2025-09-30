import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CartOrderSuccessScreen extends StatelessWidget {
  const CartOrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
            alignment: Alignment(0, -0.4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                context.icons.checkCircle.svg(),
                const SizedBox(height: 16),
                Text(
                  context.l10n.thankYouForOrder,
                  style: context.typography.headline2Medium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  context.l10n.orderSuccess,
                  style: context.typography.headline5Regular.copyWith(
                    color: context.colors.secondary.withAlpha(115),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => context.router.navigate(
                      HomeRoute(
                        children: [],
                      ),
                    ),
                    child: Text(context.l10n.returnToShopping),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
