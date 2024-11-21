import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  Locale get locale => Localizations.localeOf(this);

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textStyle => theme.textTheme;

  bool get isDarkMode => theme.brightness == Brightness.dark;

  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  TextTheme get textTheme => theme.textTheme;

  void showFailureMessage(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message),
      ),
    );
  }

  void showSuccessMessage(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text(message),
      ),
    );
  }

  void fieldFocusChange(
    FocusNode? currentFocus,
    FocusNode? nextFocus,
  ) {
    if (currentFocus != null && nextFocus != null) {
      currentFocus.unfocus();
      FocusScope.of(this).requestFocus(nextFocus);
    }
  }
}
