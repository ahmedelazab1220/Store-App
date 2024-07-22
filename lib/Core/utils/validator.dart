import 'package:storeapp/Core/utils/text.dart';

class Validator {
  static String? validateName(String? value) {
    if (value!.isEmpty) {
      return AppText.requiredField;
    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
      return "Please enter correct name";
    } else {
      return null;
    }
  }

  static String? validatePhone(String? value) {
    if (value!.isEmpty) {
      return AppText.requiredField;
    } else if (!RegExp(r'^01[0-2,5]{1}[0-9]{8}$').hasMatch(value)) {
      return AppText.invalidPhone;
    }
    return null;
  }
}
