import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:ez_sauda/core/presentation/widgets/dialog/popup_dialog.dart';
import 'package:ez_sauda/features/orders/domain/models/enums/order_status.dart';
import 'package:ez_sauda/features/orders/presentation/blocs/order_bloc.dart';
import 'package:ez_sauda/features/orders/presentation/blocs/order_event.dart';
import 'package:ez_sauda/features/orders/presentation/blocs/order_state.dart';
import 'package:ez_sauda/features/orders/presentation/input_formatters/budget_currency_input_formatter.dart';
import 'package:ez_sauda/features/product/domain/models/distributor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersFilterDialog extends StatefulWidget {
  const OrdersFilterDialog({
    required this.initialFilter,
    super.key,
    this.distributors,
  });

  final OrderFilter initialFilter;
  final List<Distributor>? distributors;

  static Future<bool?> show(BuildContext context) => PopupDialog.show(
        context,
        child: BlocProvider.value(
          value: context.read<OrderBloc>(),
          child: BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              return OrdersFilterDialog(
                initialFilter: state.filter,
                distributors: state.distributors,
              );
            },
          ),
        ),
      );

  @override
  State<OrdersFilterDialog> createState() => _OrdersFilterDialogState();
}

class _OrdersFilterDialogState extends State<OrdersFilterDialog> {
  late OrderFilter filter = widget.initialFilter;

  late final priceFromController = TextEditingController(
    text: widget.initialFilter.priceFrom?.formatted,
  );
  late final priceToController = TextEditingController(
    text: widget.initialFilter.priceTo?.formatted,
  );

  void normalizeSums() {
    final priceFrom = filter.priceFrom;
    final priceTo = filter.priceTo;
    if (priceTo == null || priceFrom == null) {
      return;
    }
    if (priceFrom > priceTo) {
      filter = filter.copyWith(
        priceTo: priceFrom,
      );
      priceToController.text = priceFrom.formatted;
    }
  }

  @override
  Widget build(BuildContext context) {
    final distributors = widget.distributors;
    final inputDecorationBorder = OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: context.colors.outline),
      borderRadius: BorderRadius.circular(1),
    );
    return Theme(
      data: context.theme.copyWith(
        inputDecorationTheme: context.theme.inputDecorationTheme.copyWith(
          border: inputDecorationBorder,
          enabledBorder: inputDecorationBorder,
          focusedBorder: inputDecorationBorder,
          disabledBorder: inputDecorationBorder,
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.filter,
              style: context.typography.headline5Bold,
            ),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 12),
                  Text(
                    context.l10n.status,
                    style: context.typography.bodyRegular,
                  ),
                  for (final status in [
                    OrderStatus.created,
                    OrderStatus.shipped,
                    OrderStatus.delivered,
                    OrderStatus.cancelled,
                    OrderStatus.returned,
                  ])
                    Row(
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: filter.statuses.contains(status),
                          onChanged: (select) {
                            setState(() {
                              if (select == true) {
                                filter = filter.copyWith(
                                  statuses: filter.statuses.toList()
                                    ..add(status),
                                );
                              } else {
                                filter = filter.copyWith(
                                  statuses: filter.statuses.toList()
                                    ..remove(status),
                                );
                              }
                            });
                          },
                        ),
                        Text(
                          status.getStatusText(context),
                          style: context.typography.bodyRegular,
                        ),
                      ],
                    ),
                  const SizedBox(height: 12),
                  Text(
                    context.l10n.date,
                    style: context.typography.bodyRegular,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: filter.orderFilterDate is OrderFilterDateDay,
                        onChanged: (select) {
                          setState(() {
                            if (select == true) {
                              filter = filter.copyWith(
                                orderFilterDate: OrderFilterDateDay(),
                              );
                            } else {
                              filter = filter.copyWith(
                                orderFilterDate: null,
                              );
                            }
                          });
                        },
                      ),
                      Text(
                        context.l10n.today,
                        style: context.typography.bodyRegular,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: filter.orderFilterDate is OrderFilterDateWeek,
                        onChanged: (select) {
                          setState(() {
                            if (select == true) {
                              filter = filter.copyWith(
                                orderFilterDate: OrderFilterDateWeek(),
                              );
                            } else {
                              filter = filter.copyWith(
                                orderFilterDate: null,
                              );
                            }
                          });
                        },
                      ),
                      Text(
                        context.l10n.week,
                        style: context.typography.bodyRegular,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: filter.orderFilterDate is OrderFilterDateMonth,
                        onChanged: (select) {
                          setState(() {
                            if (select == true) {
                              filter = filter.copyWith(
                                orderFilterDate: OrderFilterDateMonth(),
                              );
                            } else {
                              filter = filter.copyWith(
                                orderFilterDate: null,
                              );
                            }
                          });
                        },
                      ),
                      Text(
                        context.l10n.month,
                        style: context.typography.bodyRegular,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    context.l10n.distributors,
                    style: context.typography.bodyRegular,
                  ),
                  if (distributors == null)
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      ),
                    )
                  else
                    for (final distributor in distributors)
                      Row(
                        children: [
                          Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: filter.distributors.contains(distributor),
                            onChanged: (select) {
                              setState(() {
                                if (select == true) {
                                  filter = filter.copyWith(
                                    distributors: filter.distributors.toList()
                                      ..add(distributor),
                                  );
                                } else {
                                  filter = filter.copyWith(
                                    distributors: filter.distributors.toList()
                                      ..remove(distributor),
                                  );
                                }
                              });
                            },
                          ),
                          Text(
                            distributor.name,
                            style: context.typography.bodyRegular,
                          ),
                        ],
                      ),
                  const SizedBox(height: 12),
                  Text(
                    context.l10n.sum,
                    style: context.typography.bodyRegular,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: priceFromController,
                          inputFormatters: [
                            SumInputFormatter(),
                          ],
                          onChanged: (value) {
                            filter = filter.copyWith(
                              priceFrom: int.tryParse(
                                value.replaceAll(' ', ''),
                              ),
                            );
                            normalizeSums();
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: priceToController,
                          inputFormatters: [
                            SumInputFormatter(),
                          ],
                          onChanged: (value) {
                            filter = filter.copyWith(
                              priceTo: int.tryParse(
                                value.replaceAll(' ', ''),
                              ),
                            );
                            normalizeSums();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 36,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context
                      .read<OrderBloc>()
                      .add(OrderFiltersChanged(filters: filter));
                  context.router.pop();
                },
                child: Text(context.l10n.apply),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
