import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

Future<void> showErrorSnackBar(
  BuildContext context,
  String text,
) async {
  return Flushbar(
    backgroundColor: Theme.of(context).colorScheme.error,
    flushbarStyle: FlushbarStyle.FLOATING,
    flushbarPosition: FlushbarPosition.TOP,
    message: text,
    duration: const Duration(seconds: 2),
    margin: EdgeInsets.symmetric(horizontal: 24),
    borderRadius: BorderRadius.circular(16),
    animationDuration: const Duration(milliseconds: 300),
  ).show(context);
}
