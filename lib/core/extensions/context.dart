import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  Locale get locale => Localizations.localeOf(this);

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textStyle => theme.textTheme;

  bool get isDarkMode => theme.brightness == Brightness.dark;

  // ThemeColors get color => theme.extension<ThemeColors>()!;

  // ThemeTextStyles get textStyle => theme.extension<ThemeTextStyles>()!;

  TextTheme get textTheme => theme.textTheme;

  // ScaffoldFeatureController<SnackBar, SnackBarClosedReason> Function(
  //     SnackBar snackBar,
  //     ) get showSnackBar => ScaffoldMessenger.of(this).showSnackBar;
  //
  // ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showErrorSnackBar({
  //   String? title,
  //   required String message,
  // }) =>
  //     ScaffoldMessenger.of(this).showSnackBar(
  //       SnackBar(
  //         content: Column(
  //           crossAxisAlignment: CrossAxisAlignment.stretch,
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text(
  //               title ?? tr('error'),
  //               style: textStyle.appBarTitle.copyWith(
  //                 color: colorScheme.onError,
  //               ),
  //             ),
  //             const SizedBox(height: 6),
  //             Text(message),
  //           ],
  //         ),
  //         backgroundColor: colorScheme.error,
  //       ),
  //     );
  //
  // ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
  // showWarningSnackBar({
  //   required String message,
  // }) =>
  //     ScaffoldMessenger.of(this).showSnackBar(
  //       SnackBar(
  //         content: Text(message),
  //         backgroundColor: ThemeColors.light.warning,
  //       ),
  //     );
  //
  // ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSuccessSnackBar({
  //   String? title,
  //   required String message,
  // }) =>
  //     ScaffoldMessenger.of(this).showSnackBar(
  //       SnackBar(
  //         content: Text(message),
  //         backgroundColor: colorScheme.tertiary,
  //       ),
  //     );

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
