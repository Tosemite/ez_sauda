import 'package:ez_sauda/core/data/extensions/date_time_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/widgets/rating_info_view.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:flutter/material.dart';

class ProductDistributorView extends StatelessWidget {
  const ProductDistributorView({
    required this.distributor,
    super.key,
  });

  final ProductDistributor distributor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      distributor.distributor.name,
                      style: context.typography.bodyRegular,
                    ),
                    RatingInfoView(
                      rating: distributor.distributor.rating,
                      totalReviews: distributor.distributor.totalReviews,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(context.l10n.select),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        context.icons.van.svg(
                          height: 16,
                          width: 16,
                          colorFilter: ColorFilter.mode(
                            context.colors.onSurface,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: 2),
                        Text(
                          context.l10n.delivery,
                          style:
                              context.typography.footnoteDescription.copyWith(
                            color: context.colors.onSurface,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Text(
                      distributor.deliveryDate
                          .formatToDayMonthFull(context.localeName),
                      style: context.typography.bodyRegular,
                    ),
                  ],
                ),
              ),
              Text(
                '${distributor.cost} ₸/шт',
                style: context.typography.headline4Medium.copyWith(
                  color: context.colors.primary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
