import 'package:os_project/assets/constants.dart';

extension StringExtenions on String {
  String get capitalizeFirstLetter {
    if (length <= 1) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get profileIndicator {
    if (length <= 2) return this;
    return '${this[0].toUpperCase()}${this[1].toUpperCase()}';
  }

  String get publicUrl {
    return replaceAll('http://localhost', Constants.base);
  }
}

/// validators

String? emptyValidator(String? name) {
  if (name == null || name.trim().isEmpty) {
    return 'Must fill the field';
  } else {
    return null;
  }
}

String? passwordValidator(String? password) {
  if (password == null || password.isEmpty) {
    return 'Password is required';
  } else if (password.length < 8) {
    return 'Password must be at least 8 characters';
  } else {
    return null;
  }
}

String? emailValidator(String? email) {
  if (email == null || email.isEmpty) {
    return 'Email is required';
  } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
    return 'Email is not valid';
  } else {
    return null;
  }
}
