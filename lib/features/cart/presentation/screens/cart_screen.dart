import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_event.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_state.dart';
import 'package:ez_sauda/features/cart/presentation/widgets/cart_checkout_bar.dart';
import 'package:ez_sauda/features/cart/presentation/widgets/cart_product_row_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state.productList.isEmpty) {
          return Center(
            child: Text('У вас нет предметов в корзине'),
          );
        }
        return Scaffold(
          bottomNavigationBar: CartCheckoutBar(
            totalCost: state.totalPrice,
            totalAmount: state.totalItemCount,
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                child: Row(
                  children: [
                    Checkbox(
                      value: state.productList.none(
                        (e) => !state.selectedDistributorIds
                            .contains(e.distributor.id),
                      ),
                      onChanged: (selectAll) {
                        if (selectAll == null) return;
                        context.read<CartBloc>().add(
                              selectAll
                                  ? CartAllProductsSelected()
                                  : CartAllProductsUnselected(),
                            );
                      },
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        context.l10n.selectAll,
                        style: context.typography.bodyRegular,
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () => context.read<CartBloc>().add(
                            CartSelectedProductsCleared(),
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: context.icons.deleteOutlined.svg(),
                      ),
                    ),
                  ],
                ),
              ),
              for (int i = 0; i < state.productList.length; i++)
                if (i == 0 ||
                    state.productList[i - 1].distributor.id !=
                        state.productList[i].distributor.id)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          Checkbox(
                            value: state.selectedDistributorIds.contains(
                              state.productList[i].distributor.id,
                            ),
                            onChanged: (selectAll) {
                              if (selectAll == null) return;
                              context.read<CartBloc>().add(
                                    selectAll
                                        ? CartDistributorProductsSelected(
                                            state.productList[i].distributor.id,
                                          )
                                        : CartDistributorProductsUnselected(
                                            state.productList[i].distributor.id,
                                          ),
                                  );
                            },
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              state.productList[i].distributor.name,
                              style: context.typography.headline5Medium,
                            ),
                          ),
                        ],
                      ),
                      CartProductRowView(cartProduct: state.productList[i]),
                    ],
                  )
                else
                  CartProductRowView(cartProduct: state.productList[i]),
            ],
          ),
        );
      },
    );
  }
}
