import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/features/product/domain/models/distributor.dart';
import 'package:flutter/material.dart';

class OrderDistributorCard extends StatelessWidget {
  const OrderDistributorCard({
    required this.distributor,
    super.key,
  });

  final Distributor distributor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            width: 60,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: context.colors.outline),
                image: DecorationImage(
                  image: NetworkImage(
                    //TODO change to product.imageUrls logic
                    'https://www.pepsi.com/assets/images/pepsi-logos/logo-0.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  distributor.name,
                  style: context.typography.headline5Medium,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    context.icons.phone.svg(
                      colorFilter: ColorFilter.mode(
                        context.colors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '+ 7 707 457 82 98',
                      style: context.typography.bodyRegular,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    context.icons.mail.svg(
                      colorFilter: ColorFilter.mode(
                        context.colors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'caregroup@mail.ru',
                      style: context.typography.bodyRegular,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
