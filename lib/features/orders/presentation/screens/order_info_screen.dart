import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/data/extensions/date_time_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:ez_sauda/features/orders/domain/models/product_order.dart';
import 'package:ez_sauda/features/orders/presentation/widgets/order_distributor_card.dart';
import 'package:ez_sauda/features/orders/presentation/widgets/order_responsible_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderInfoScreen extends StatelessWidget {
  const OrderInfoScreen({
    required this.order,
    super.key,
  });

  final ProductOrder order;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            splashRadius: 20,
            onPressed: context.router.pop,
            icon: context.icons.arrowLeft.svg(),
          ),
        ),
        title: Row(
          children: [
            Expanded(child: Text(context.l10n.orderNumber(order.orderNum))),
            Text(
              order.createdDate.formatToDateInitialsDotted(),
              style: context.typography.bodyRegular,
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Text(
            order.status.getStatusText(context),
            style: context.typography.headline5Medium.copyWith(
              color: order.status.getStatusColor(context),
            ),
          ),
          const SizedBox(height: 8),
          Divider(),
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
                order.deliveryDate
                    .formatToDateInitialsDottedWithTimeCommaSeparated(),
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
                  context.l10n.deliveryCost,
                  style: context.typography.bodyRegular,
                ),
              ),
              Text(
                context.l10n.free,
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
                  context.l10n.productsCost,
                  style: context.typography.bodyRegular,
                ),
              ),
              Text(
                '${order.totalAmount.formatted} ₸',
                style: context.typography.bodyRegular,
              ),
            ],
          ),
          SizedBox(height: 12),
          Divider(),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.total,
                  style: context.typography.bodyRegular,
                ),
              ),
              Text(
                '${order.totalAmount.formatted} ₸',
                style: context.typography.headline3Medium,
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 16),
          Text(
            context.l10n.distributor,
            style: context.typography.headline5Medium,
          ),
          SizedBox(height: 4),
          OrderDistributorCard(distributor: order.distributor),
          SizedBox(height: 16),
          Text(
            context.l10n.responsible,
            style: context.typography.headline5Medium,
          ),
          SizedBox(height: 4),
          OrderResponsibleCard(),
          SizedBox(height: 16),
          Text(
            context.l10n.delivery,
            style: context.typography.headline5Medium,
          ),
          SizedBox(height: 4),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: context.colors.surface,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'г. Астана, улица Кунаева, 30, квартира 150, подъезд 3',
              style: context.typography.bodyRegular,
            ),
          ),
        ],
      ),
    );
  }
}
