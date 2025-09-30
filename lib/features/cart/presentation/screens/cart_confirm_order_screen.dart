import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:ez_sauda/core/data/extensions/date_time_extension.dart';
import 'package:ez_sauda/core/presentation/bloc/base_state.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_state.dart';
import 'package:ez_sauda/features/cart/presentation/widgets/cart_confirm_order_bar.dart';
import 'package:ez_sauda/features/cart/presentation/widgets/cart_confirm_order_product_grid_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CartConfirmOrderScreen extends StatelessWidget {
  const CartConfirmOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CartConfirmOrderBar(),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            splashRadius: 20,
            onPressed: context.router.pop,
            icon: context.icons.arrowLeft.svg(),
          ),
        ),
        title: Text(context.l10n.confirm),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        buildWhen: (prev, curr) =>
            prev.orderCreateState != curr.orderCreateState,
        builder: (context, state) {
          if (state.orderCreateState is BaseInProgress) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final groupedProducts = state.productList.groupListsBy(
            (e) => e.distributor.id,
          );
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            children: [
              for (final e in groupedProducts.entries)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 110,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: e.value.length,
                          itemBuilder: (context, index) {
                            return CartConfirmOrderProductGridTile(
                              cartProduct: e.value[index],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 8),
                      Divider(),
                      SizedBox(height: 12),
                      Text(
                        context.l10n.deliveryDate(
                          DateTime.now().formatToDayMonthFull(),
                        ),
                        style: context.typography.bodyRegular,
                      ),
                      SizedBox(height: 12),
                      Divider(),
                      SizedBox(height: 12),
                      Text(
                        context.l10n.commentsOnTheOrder,
                        style: context.typography.bodyRegular,
                      ),
                      SizedBox(height: 4),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: context.l10n.enterComment,
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      context.l10n.yourOrder,
                      style: context.typography.headline5Bold,
                    ),
                  ),
                  Text(
                    context.l10n.numItems(state.totalItemCount),
                    style: context.typography.bodyRegular.copyWith(
                      color: context.colors.secondary.withAlpha(115),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      context.l10n.itemsNum(state.totalItemCount),
                      style: context.typography.bodyRegular.copyWith(
                        color: context.colors.secondary.withAlpha(115),
                      ),
                    ),
                  ),
                  Text(
                    '${state.totalPrice.formatted} ₸',
                    style: context.typography.bodyRegular,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Divider(color: context.colors.secondary.withAlpha(64)),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      context.l10n.total,
                      style: context.typography.headline3Medium,
                    ),
                  ),
                  Text(
                    '${state.totalPrice.formatted} ₸',
                    style: context.typography.headline3Medium,
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          );
        },
      ),
    );
  }
}
