import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:ez_sauda/core/presentation/widgets/catalog_tile.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    required this.categories,
    super.key,
  });

  final ValueState<List<Category>> categories;

  @override
  Widget build(BuildContext context) {
    switch (categories) {
      case ValueSuccess<List<Category>>(value: final categories):
        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: categories.length ~/ 2 - 1,
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
                            category: categories[index],
                          ),
                        ),
                        name: categories[index].name,
                      ),
                    ),
                    const SizedBox(width: 8),
                    if (index + 1 != categories.length)
                      Expanded(
                        child: CatalogTile(
                          onTap: () => context.router.push(
                            ProductSearchRoute(
                              category: categories[index+1],
                            ),
                          ),
                          name: categories[index + 1].name,
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
      case ValueFailure<List<Category>>():
      default:
        return Center(
          child: CircularProgressIndicator(),
        );
    }
  }
}
