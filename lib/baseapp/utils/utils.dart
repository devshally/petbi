import 'package:flutter/services.dart';

export 'package:petbi/baseapp/widgets/my_button.dart';
export 'package:petbi/baseapp/widgets/my_text_field.dart';
export 'package:petbi/baseapp/widgets/text_view.dart';
export 'package:petbi/utilities/colors.dart';
export 'package:petbi/utilities/core/size.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:go_router/go_router.dart';

String allFirstToUpper(String input) {
  // log(input);
  if (input.isEmpty || input.length < 2) {
    return input;
  } else {
    List<String> words = input.split(' ');
    String result = '';
    for (int i = 0; i < words.length; i++) {
      String word = words[i];
      try {
        result += word[0].toUpperCase() + word.substring(1);
      } catch (e) {
        // log(e.toString());
      }
      if (i < words.length - 1) {
        result += ' ';
      }
    }
    return result;
  }
}

String capitalize(String value) {
  if (value.trim().isEmpty) return "";
  return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: allFirstToUpper(newValue.text),
      selection: newValue.selection,
    );
  }
}
