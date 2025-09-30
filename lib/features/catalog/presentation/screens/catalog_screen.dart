import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/widgets/barcode_icon_button.dart';
import 'package:ez_sauda/core/presentation/widgets/form/search_text_field.dart';
import 'package:ez_sauda/features/catalog/presentation/blocs/catalog_cubit.dart';
import 'package:ez_sauda/features/catalog/presentation/blocs/catalog_state.dart';
import 'package:ez_sauda/features/catalog/presentation/widgets/brands_list_view.dart';
import 'package:ez_sauda/features/catalog/presentation/widgets/categories_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => context.di<CatalogCubit>(),
      child: BlocBuilder<CatalogCubit, CatalogState>(
        builder: (context, state) {
          return DefaultTabController(
            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: SearchTextField(
                    suffixIcon: BarcodeIconButton(),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: context.l10n.categories,
                      ),
                      Tab(
                        text: context.l10n.brands,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      CategoryListView(categories: state.categories),
                      BrandsListView(brands: state.brands),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
