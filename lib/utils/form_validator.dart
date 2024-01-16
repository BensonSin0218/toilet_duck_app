import "dart:core";

String? isEmailValidator(String? value) {
  final RegExp email = RegExp(
    r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$",
    caseSensitive: false
  );

  return email.hasMatch(value!) ?
    null : "* 電子郵件格式不正確";
}

String? isMatchValidator(String? value1, String? value2) {
  return ((value1 ?? "") == (value2 ?? "")) ?
    null : "* 不一樣";
}

String? maxLengthValidator(String? value, int maxLength) {
  return value!.length < maxLength ?
    null : "* 太長";
}

String? minLengthValidator(String? value, int minLength) {
  return value!.length > minLength ?
    null : "* 太短";
}

String? patternValidator(String? value, String pattern, bool caseSensitive) {
  final RegExp reg = RegExp(
    pattern,
    caseSensitive: caseSensitive
  );

  return reg.hasMatch(value!) ?
    null : "* 與模式不匹配";
}

String? requiredValidator(String? value) {
  return !(value == null || value.isEmpty) ?
    null : "* 必需的";
}

String? specialCharacterValidator(String? value) {
  final RegExp reg = RegExp(
    r"(?=.*?[#?!@$%^&*-])",
    caseSensitive: false
  );

  return reg.hasMatch(value!) ?
    null : "* 至少需要一個特殊字符";
}

// Multi-Validator
String? multiValidator(List<String?> validators) {
  for(String? validator in validators) {
    if(validator == null) continue;
    else return validator;
  }

  return null;
}