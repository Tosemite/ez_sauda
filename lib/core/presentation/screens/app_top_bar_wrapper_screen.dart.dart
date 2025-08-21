import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/widgets/app_top_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AppTopBarWrapperScreen extends StatelessWidget {
  const AppTopBarWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTopBar(
      child: AutoRouter(),
    );
  }
}
