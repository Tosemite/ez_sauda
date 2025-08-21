import 'package:ez_sauda/core/config/locale_config.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:ez_sauda/core/presentation/widgets/mixins/widget_localization_mixin.dart';
import 'package:ez_sauda/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> with IOWidgetLocalizationMixin {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Easy Sauda',
      locale: locale,
      debugShowCheckedModeBanner: false,
      theme: theme(),
      color: colorScheme.primary,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        context.di<LocaleConfig>().delegate,
      ],
      supportedLocales: context.di<LocaleConfig>().delegate.supportedLocales,
    );
  }
}
