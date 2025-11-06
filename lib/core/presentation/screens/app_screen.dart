import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:ez_sauda/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      inheritNavigatorObservers: true,
      routes: const [
        HomeRoute(),
        CatalogRoute(),
        CartRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
