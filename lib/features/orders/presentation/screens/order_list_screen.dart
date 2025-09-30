import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/widgets/form/search_text_field.dart';
import 'package:ez_sauda/features/orders/presentation/blocs/order_bloc.dart';
import 'package:ez_sauda/features/orders/presentation/blocs/order_state.dart';
import 'package:ez_sauda/features/orders/presentation/dialogs/orders_filter_dialog.dart';
import 'package:ez_sauda/features/orders/presentation/widgets/order_list_entry_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class OrderListScreen extends StatelessWidget {
  const OrderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            splashRadius: 20,
            onPressed: context.router.parentAsStackRouter?.pop,
            icon: context.icons.arrowLeft.svg(),
          ),
        ),
        title: Text(context.l10n.myOrders),
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        buildWhen: (prev, curr) => prev.orders != curr.orders,
        builder: (context, state) {
          final orders = state.orders;
          if (orders == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            children: [
              SearchTextField(
                suffixIcon: InkWell(
                  onTap: () => OrdersFilterDialog.show(context),
                  borderRadius: BorderRadius.circular(100),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: context.icons.filter.svg(
                      colorFilter: ColorFilter.mode(
                        context.colors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              for (final e in orders) OrderListEntryView(order: e),
              SafeArea(child: SizedBox()),
            ],
          );
        },
      ),
    );
  }
}
