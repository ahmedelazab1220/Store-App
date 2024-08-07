import 'package:storeapp/Core/utils/text.dart';

class Validator {
  static String? validateName(String? value) {
    if (value!.isEmpty) {
      return null;
    } else if (!RegExp(r'^[\u0621-\u064A\u0660-\u0669 ]+$').hasMatch(value) ||
        value.length < 3) {
      return AppText.kInvalidName;
    } else {
      return null;
    }
  }

  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return AppText.kRequiredField;
    } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$').hasMatch(value)) {
      return AppText.kInvalidEmail;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return AppText.kRequiredField;
    } else if (!RegExp(
                r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=!])(?=\S+$).*$')
            .hasMatch(value) ||
        value.length < 8) {
      return AppText.kInvalidPassword;
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value!.isEmpty) {
      return AppText.kRequiredField;
    } else if (!RegExp(r'^01[0-2,5]{1}[0-9]{8}$').hasMatch(value)) {
      return AppText.kInvalidPhone;
    }
    return null;
  }

  static String? validateAddress(String? value) {
    if (value!.isEmpty) {
      return AppText.kRequiredField;
    }
    return null;
  }
}
