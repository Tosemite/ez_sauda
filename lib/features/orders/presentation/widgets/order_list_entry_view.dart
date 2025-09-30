import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/data/extensions/date_time_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:ez_sauda/features/orders/domain/models/product_order.dart';
import 'package:flutter/material.dart';

class OrderListEntryView extends StatelessWidget {
  const OrderListEntryView({required this.order, super.key});

  final ProductOrder order;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.orderNumber(order.orderNum),
                  style: context.typography.headline5Medium,
                ),
              ),
              Text(
                order.createdDate.formatToDateInitialsDotted(),
                style: context.typography.bodyRegular.copyWith(
                  color: context.colors.secondary.withAlpha(115),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            order.status.getStatusText(context),
            style: context.typography.bodyRegular.copyWith(
              color: order.status.getStatusColor(context),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 70,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3, //TODO get from order
              separatorBuilder: (context, _) {
                return const SizedBox(width: 8);
              },
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: context.colors.outline),
                      image: DecorationImage(
                        image: NetworkImage(
                          //TODO change to product.imageUrls logic
                          'https://confitelia.com/6631-thickbox_default/twix-white-chocolate-pack.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 8),
          Text(
            order.distributor.name,
            style: context.typography.bodyRegular,
          ),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.orderSum,
                  style: context.typography.bodyRegular,
                ),
              ),
              Text(
                '${order.totalAmount.formatted} тг',
                style: context.typography.headline4Medium,
              ),
            ],
          ),
          SizedBox(height: 12),
          Divider(),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.amount,
                  style: context.typography.bodyRegular,
                ),
              ),
              Text(
                context.l10n.itemsAmount(25),
                style: context.typography.bodyRegular,
              ),
            ],
          ),
          SizedBox(height: 12),
          Divider(),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.plannedDelivery,
                  style: context.typography.bodyRegular,
                ),
              ),
              Text(
                order.deliveryDate.formatToDateInitialsDotted(),
                style: context.typography.bodyRegular,
              ),
            ],
          ),
          SizedBox(height: 12),
          Divider(),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.responsible,
                  style: context.typography.bodyRegular,
                ),
              ),
              Text(
                'Туржанов Б.К.', //TODO
                style: context.typography.bodyRegular,
              ),
            ],
          ),
          SizedBox(height: 12),
          Divider(),
          InkWell(
            onTap: () => context.router.push(OrderInfoRoute(order: order)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      context.l10n.readMore,
                      style: context.typography.bodyRegular.copyWith(
                        color: context.colors.primary,
                      ),
                    ),
                  ),
                  context.icons.arrowRight.svg(
                    colorFilter: ColorFilter.mode(
                      context.colors.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
