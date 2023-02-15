import 'package:form_field_validator/form_field_validator.dart';

class MyFormValidator {
  static final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(
      r'(?=.*?[#?!@$%^&*-])',
      errorText: 'passwords must have at least one special character',
    ),
  ]);

  static final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'email is required'),
    EmailValidator(errorText: 'email must be a valid email address'),
  ]);

  static final contentValidator = MultiValidator([
    RequiredValidator(errorText: 'content is required'),
    MinLengthValidator(1, errorText: 'content must be at least 1 character'),
  ]);
  static final phoneNumberValidator = MultiValidator([
    RequiredValidator(errorText: 'phone number is required'),
    MinLengthValidator(
      10,
      errorText: 'phone number must be at least 10 digits',
    ),
    MaxLengthValidator(10, errorText: 'phone number must be at most 10 digits'),
  ]);

  static String? isValidName({required String? value, String? error}) {
    final nameRegExp = RegExp("\b([A-ZÀ-ÿ][-,a-z])+");
    if (value?.isEmpty ?? true) {
      return 'Required';
    }
    if (nameRegExp.hasMatch(value ?? "")) {
      return error ?? 'Name is invalid';
    } else {
      return null;
    }
  }
}
