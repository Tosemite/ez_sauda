import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:ez_sauda/core/presentation/widgets/catalog_tile.dart';
import 'package:flutter/material.dart';

class BrandsListView extends StatelessWidget {
  const BrandsListView({
    required this.brands,
    super.key,
  });

  final ValueState<List<Brand>> brands;

  @override
  Widget build(BuildContext context) {
    switch (brands) {
      case ValueSuccess<List<Brand>>(value: final brands):
        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: brands.length ~/ 2 - 1,
          itemBuilder: (context, index) {
            index *= 2;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: 90,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: CatalogTile(
                        onTap: () => context.router.push(
                          ProductSearchRoute(
                            brand: brands[index],
                          ),
                        ),
                        name: brands[index].name,
                        imageUrl: brands[index].logoUrl,
                      ),
                    ),
                    const SizedBox(width: 8),
                    if (index + 1 != brands.length)
                      Expanded(
                        child: CatalogTile(
                          onTap: () => context.router.push(
                            ProductSearchRoute(
                              brand: brands[index+1],
                            ),
                          ),
                          name: brands[index + 1].name,
                          imageUrl: brands[index + 1].logoUrl,
                        ),
                      )
                    else
                      Spacer(),
                  ],
                ),
              ),
            );
          },
        );
      case ValueFailure<List<Brand>>():
      default:
        return Center(
          child: CircularProgressIndicator(),
        );
    }
  }
}
