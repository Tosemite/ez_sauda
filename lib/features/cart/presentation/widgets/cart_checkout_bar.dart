import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:flutter/material.dart';

class CartCheckoutBar extends StatelessWidget {
  const CartCheckoutBar({
    required this.totalCost,
    required this.totalAmount,
    super.key,
  });

  final double totalCost;
  final int totalAmount;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
        color: context.colors.outlineVariant,
      ),
      child: SafeArea(
        child: Container(
          height: 65,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${totalCost.formatted} ₸',
                      style: context.typography.headline3Medium,
                    ),
                    Text(
                      context.l10n.cartUnits(totalAmount),
                      style: context.typography.footnoteDescription.copyWith(
                        color: context.colors.secondary.withAlpha(217),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () => context.router.navigate(
                    CartConfirmOrderRoute(),
                  ),
                  child: Text(context.l10n.proceedToCheckout),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
