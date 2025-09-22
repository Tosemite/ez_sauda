import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCounterButton extends StatefulWidget {
  const ProductCounterButton({
    required this.productId,
    required this.count,
    this.unitOfMeasurement,
    super.key,
  });

  final String productId;
  final String? unitOfMeasurement;
  final int count;

  @override
  State<ProductCounterButton> createState() => _ProductCounterButtonState();
}

class _ProductCounterButtonState extends State<ProductCounterButton> {
  late int _count = widget.count;

  @override
  void didUpdateWidget(ProductCounterButton oldWidget) {
    _count = widget.count;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colors.onPrimary,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: context.colors.outline,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                if (_count <= 0) {
                  return;
                }
                setState(() {
                  _count--;
                });
                context.read<CartBloc>().add(
                      CartProductAmountChanged(
                        productId: widget.productId,
                        count: _count,
                      ),
                    );
              },
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: context.icons.minus.svg(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                '$_count ${widget.unitOfMeasurement ?? 'штук'}', //todo remove hardcode
                textAlign: TextAlign.center,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                setState(() {
                  _count++;
                });
                context.read<CartBloc>().add(
                      CartProductAmountChanged(
                        productId: widget.productId,
                        count: _count,
                      ),
                    );
              },
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: context.icons.plus.svg(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
