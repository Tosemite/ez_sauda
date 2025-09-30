import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:ez_sauda/core/presentation/widgets/barcode_icon_button.dart';
import 'package:ez_sauda/core/presentation/widgets/product_list_view.dart';
import 'package:ez_sauda/core/presentation/widgets/form/search_text_field.dart';
import 'package:ez_sauda/features/home/presentation/blocs/home_cubit.dart';
import 'package:ez_sauda/features/home/presentation/blocs/home_state.dart';
import 'package:ez_sauda/core/presentation/widgets/catalog_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => context.di<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final categories = state.categories;
          final products = state.recommendedProducts;
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: SearchTextField(
                  onTap: () => context.router.push(ProductSearchRoute()),
                  suffixIcon: BarcodeIconButton(
                    onBarcodeScanned: (barcode) => context.router.push(
                      ProductSearchRoute(barcode: barcode),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  children: [
                    Text(
                      context.l10n.categories,
                      style: context.typography.headline5Medium,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          context.l10n.viewAll,
                          style:
                              context.typography.footnoteDescription.copyWith(
                            color: context.colors.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              if (categories != null)
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length + 2,
                    itemBuilder: (context, index) {
                      if (index == 0 || index == categories.length + 1) {
                        return SizedBox(width: 20);
                      }
                      index = max(0, index - 1);
                      return SizedBox(
                        width: 140,
                        child: CatalogTile(
                          onTap: () => context.router.push(
                            ProductSearchRoute(
                              category: categories[index],
                            ),
                          ),
                          name: categories[index].name,
                        ),
                      );
                    },
                  ),
                )
              else
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Text(
                  context.l10n.recommendations,
                  style: context.typography.headline5Medium,
                ),
              ),
              if (products != null)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: ProductListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    products: products,
                  ),
                )
              else
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
