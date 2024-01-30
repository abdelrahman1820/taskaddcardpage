import 'package:flutter/services.dart';

class GenericFormatter extends TextInputFormatter {
  final List<int> digits;
  final String spliter;

  GenericFormatter({required this.digits, required this.spliter});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    String enteredData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (int i = 0; i < enteredData.length; i++) {
      buffer.write(enteredData[i]);

      int index = i + 1;
      if (digits.contains(index) && enteredData.length != index) {
        buffer.write(spliter);
      }
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length),
    );
  }
}
