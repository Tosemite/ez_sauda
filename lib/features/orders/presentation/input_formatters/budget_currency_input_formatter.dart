import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:flutter/services.dart';

class SumInputFormatter extends TextInputFormatter {
  const SumInputFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newValueText = newValue.text
        .replaceAll(' ', '')
        .replaceAll(' ', '')
        .replaceAll('.', '')
        .trim();
    if (newValueText.isEmpty) {
      newValueText = '';
    }

    newValueText = int.tryParse(newValueText)?.formatted ?? '';

    return TextEditingValue(
      text: newValueText,
      selection: TextSelection.collapsed(offset: newValueText.length),
    );
  }
}
