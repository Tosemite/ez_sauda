import 'package:intl/intl.dart';

extension NumberExtension on num {
  String get formatted => NumberFormat(
        '###,###,###,###,###,###.######',
        'ru_RU',
      ).format(this);
}
