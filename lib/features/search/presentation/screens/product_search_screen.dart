import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/widgets/barcode_icon_button.dart';
import 'package:ez_sauda/core/presentation/widgets/product_list_view.dart';
import 'package:ez_sauda/core/presentation/widgets/form/search_text_field.dart';
import 'package:ez_sauda/features/search/presentation/blocs/search_cubit.dart';
import 'package:ez_sauda/features/search/presentation/blocs/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProductSearchScreen extends StatelessWidget {
  const ProductSearchScreen({
    super.key,
    this.category,
    this.brand,
    this.barcode,
  });

  final Category? category;
  final Brand? brand;
  final String? barcode;

  @override
  Widget build(BuildContext context) {
    final appBarTitle = category?.name ?? brand?.name;
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
        title: appBarTitle != null ? Text(appBarTitle) : null,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: BlocProvider(
          create: (_) => context.di<SearchCubit>(
            param1: SearchParams(
              category,
              brand,
              barcode,
            ),
          ),
          child: BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              final products = state.products;
              return Column(
                children: [
                  SearchTextField(
                    value: state.query,
                    suffixIcon: BarcodeIconButton(
                      onBarcodeScanned:
                          context.read<SearchCubit>().queryChanged,
                    ),
                  ),
                  Expanded(
                    child: products != null
                        ? ProductListView(products: products)
                        : Center(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: CircularProgressIndicator(),
                            ),
                          ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
