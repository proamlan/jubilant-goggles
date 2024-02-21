import 'package:flutter/services.dart';

class CommaTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final regEx = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    String newString = newValue.text.replaceAllMapped(
        regEx, (Match match) => '${match[1]},');
    return TextEditingValue(
      text: newString,
      selection: TextSelection.collapsed(offset: newString.length),
    );
  }
}
