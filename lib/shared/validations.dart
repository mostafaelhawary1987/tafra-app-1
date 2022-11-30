import 'package:get/get.dart';
import '../translation/languages.dart';

String? validatePhone(String? value) {
  if (value!.isEmpty) {
    return LanguagesKeys.validate_phone_empty.toString().tr;
  } else if (!value.startsWith(5.toString())) {
    return LanguagesKeys.validate_phone_start_validator.toString().tr;
  } else if (value.length != 9) {
    return LanguagesKeys.validate_phone_validator.toString().tr;
  }
  return null;
}

String? validatePassword(String? value) {
  RegExp regExp = RegExp(r"(?=.*[a-z])(?=.*[A-Z])\w+");
  if (value!.isEmpty) {
    return LanguagesKeys.validate_pass_empty.toString().tr;
  } else if (value.length < 8) {
    return LanguagesKeys.validate_password_length.toString().tr;
  } else if (!regExp.hasMatch(value)) {
    return LanguagesKeys.validate_upper_pass.toString().tr;
  }
  return null;
}

String? validateConfirmPass({required String value1, required String value2}) {
  if (value1 != value2) {
    return LanguagesKeys.PassWord_NotMatch.toString().tr;
  }
  return null;
}

String? validateNotEmpty(String? value) {
  if (value!.isEmpty) {
    return LanguagesKeys.validate_field_required.toString().tr;
  }
  return null;
}

String? validateName(String? value) {
  if (value!.isEmpty) {
    return LanguagesKeys.validate_field_required.toString().tr;
  } else if (value.length < 3 || value.length > 30) {
    return LanguagesKeys.validateNameLength.toString().tr;
  }
  return null;
}

String? validateEmail(String? value) {
  String pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value!)) {
    return LanguagesKeys.validate_email.toString().tr;
  } else {
    return null;
  }
}
