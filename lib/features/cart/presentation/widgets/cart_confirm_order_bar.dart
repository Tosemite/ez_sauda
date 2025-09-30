import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartConfirmOrderBar extends StatelessWidget {
  const CartConfirmOrderBar({
    super.key,
  });

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
          height: 100,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      context.read<CartBloc>().add(CartOrderConfirmed()),
                  child: Text(context.l10n.placeAnOrder),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                context.l10n.privacyPolicySubtitle,
                style: context.typography.footnoteDescription
                    .copyWith(color: context.colors.secondary.withAlpha(115)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
