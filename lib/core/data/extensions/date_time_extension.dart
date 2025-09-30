import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {

  String formatToDateInitialsDotted([String? locale]) =>
      DateFormat('dd.MM.yyyy', locale).format(this);


  String formatToDayMonthFull([String? locale]) =>
      DateFormat('dd MMMM', locale).format(this).toLowerCase();

  String formatToDateInitialsDottedWithTime([String? locale]) =>
      DateFormat('dd.MM.yyyy HH:mm', locale).format(this);

  String formatToDateInitialsDottedWithTimeCommaSeparated([String? locale]) =>
      DateFormat('dd.MM.yyyy, HH:mm', locale).format(this);

  String formatToTime([String? locale]) =>
      DateFormat('HH:mm:ss', locale).format(this);

  static DateTime parseTimestamp(int timestamp) =>
      DateTime.fromMillisecondsSinceEpoch(timestamp, isUtc: true); //might change

}
