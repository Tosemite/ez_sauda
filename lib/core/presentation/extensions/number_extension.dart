import 'package:ez_sauda/core/presentation/generated/assets.gen.dart';
import 'package:ez_sauda/core/presentation/widgets/mixins/widget_localization_mixin.dart';
import 'package:ez_sauda/l10n/generated/l10n.dart';
import 'package:ez_sauda/theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

extension NumberExtension on num {
  String get formatted => NumberFormat(
        '###,###,###,###,###,###.######',
        'ru_RU',
      ).format(this);
}
