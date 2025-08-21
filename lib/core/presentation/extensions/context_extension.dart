import 'package:ez_sauda/core/presentation/generated/assets.gen.dart';
import 'package:ez_sauda/core/presentation/widgets/mixins/widget_localization_mixin.dart';
import 'package:ez_sauda/l10n/generated/l10n.dart';
import 'package:ez_sauda/theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

extension BuildContextExtension on BuildContext {
  GetIt get di => GetIt.instance;

  Localization get l10n => Localization.of(this);

  String get localeName => locale.toString();

  Locale get locale => IOWidgetLocalizationMixin.of(this)!.locale;

  ThemeData get theme => Theme.of(this);

  ColorScheme get colors => theme.colorScheme;

  AppTypography get typography => AppTypography();

  $AssetsIconsGen get icons => AssetsGen.icons;

  $AssetsImagesGen get images => AssetsGen.images;
}
