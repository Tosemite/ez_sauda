import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ez_sauda/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

mixin IOWidgetLocalizationMixin<T extends StatefulWidget> on State<T> {
  Locale locale = const Locale('ru', 'KZ');

  @override
  void initState() {
    setupLocale();
    super.initState();
  }

  Future<void> setupLocale() async {
    String? preferenceLocaleCode =
        getIt<SharedPreferences>().getString('locale');
    if (preferenceLocaleCode == null) {
      if (Platform.isIOS) {
        preferenceLocaleCode = Platform.localeName.split('_').first;
      } else {
        return;
      }
    }
    final locale = Locale(preferenceLocaleCode, 'KZ');
    // if (!AppLocalizations.supportedLocales.contains(locale)) return;
    setState(() {
      this.locale = Locale(locale.languageCode, 'KZ');
    });
  }

  void setLocale(Locale? locale) {
    setLanguageCode(locale?.languageCode);
  }

  void setLanguageCode(String? languageCode) {
    if (languageCode == null) return;
    final locale = Locale(languageCode, 'KZ');
    setState(() {
      this.locale = locale;
    });
    getIt<SharedPreferences>()
        .setString('locale', languageCode)
        .ignore();
  }

  static IOWidgetLocalizationMixin? of(BuildContext context) =>
      context.findAncestorStateOfType<IOWidgetLocalizationMixin>();
}
