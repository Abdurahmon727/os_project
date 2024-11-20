import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';

typedef Validator = String? Function(String?);
typedef OnChanged = void Function(String);
typedef OnFieldSubmitted = void Function(String);

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.validator,
    this.onChanged,
    this.textInputType = TextInputType.text,
    this.currentFocus,
    this.textCapitalization = TextCapitalization.none,
    this.cursorColor,
    this.enabled = true,
    this.obscure = false,
    this.inputFormatters,
    this.textInputAction = TextInputAction.done,
    this.nextFocus,
    required this.hintText,
    this.errorText,
    this.suffix,
    this.suffixIcon,
    this.prefix,
    this.prefixIcon,
    this.prefixTextStyle,
    this.suffixTextStyle,
    this.prefixText,
    this.suffixText,
    this.labelTextStyle,
    this.labelText,
    this.labelInTextField = false,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 14,
    ),
    this.cursorHeight,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.autofillHints,
    this.readOnly,
    this.onTap,
  });

  final TextEditingController? controller;
  final Validator? validator;
  final OnChanged? onChanged;
  final TextInputType textInputType;
  final FocusNode? currentFocus;
  final FocusNode? nextFocus;
  final TextCapitalization textCapitalization;
  final Color? cursorColor;
  final bool enabled;
  final bool obscure;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction textInputAction;
  final String hintText;
  final String? errorText;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Widget? prefixIcon;
  final TextStyle? prefixTextStyle;
  final TextStyle? suffixTextStyle;
  final TextStyle? labelTextStyle;
  final String? labelText;
  final String? prefixText;
  final String? suffixText;
  final bool labelInTextField;
  final EdgeInsetsGeometry? contentPadding;
  final double? cursorHeight;
  final OnFieldSubmitted? onFieldSubmitted;
  final int? maxLines;
  final Iterable<String>? autofillHints;
  final bool? readOnly;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (labelText != null && !labelInTextField)
            Text(
              labelText!,
              style: labelTextStyle ?? context.textStyle.bodyMedium,
            ),
          if (labelText != null && !labelInTextField) 8.h,
          TextFormField(
            key: key,
            readOnly: readOnly ?? false,
            style: context.textTheme.bodyLarge,
            controller: controller,
            validator: validator,
            onChanged: onChanged,
            keyboardType: textInputType,
            focusNode: currentFocus,
            textCapitalization: textCapitalization,
            cursorColor: cursorColor ?? context.colorScheme.primary,
            enableInteractiveSelection: true,
            obscureText: obscure,
            enabled: enabled,
            textInputAction: textInputAction,
            maxLines: maxLines,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onTap: onTap,
            onEditingComplete: () {
              if (nextFocus != null) {
                nextFocus?.requestFocus();
              } else {
                currentFocus?.unfocus();
              }
            },
            onFieldSubmitted: (_) => _fieldFocusChange(
              context,
              currentFocus,
              nextFocus,
            ),
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              labelText: labelInTextField ? labelText : null,
              labelStyle: labelTextStyle ??
                  context.textStyle.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
              iconColor: context.colorScheme.primary,
              hintText: hintText,
              errorText: errorText,
              contentPadding: contentPadding,
              suffix: suffix,
              suffixIcon: suffixIcon,
              suffixIconColor: const Color(0xFF71717A),
              prefixIconColor: const Color(0xFF71717A),
              prefix: prefix,
              prefixIcon: prefixIcon,
              prefixText: prefixText,
              prefixStyle: prefixTextStyle,
              suffixText: suffixText,
              suffixStyle: suffixTextStyle,
              errorStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: context.colorScheme.error,
              ),
              border:
                  const OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1)),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1)),
              focusedBorder:
                  const OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1.5)),
              errorBorder:
                  const OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
              focusedErrorBorder:
                  const OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1.5)),
            ),
            cursorHeight: cursorHeight,
            autofillHints: autofillHints,
          ),
        ],
      );

  void _fieldFocusChange(
    BuildContext context,
    FocusNode? currentFocus,
    FocusNode? nextFocus,
  ) {
    if (currentFocus != null && nextFocus != null) {
      currentFocus.unfocus();
      FocusScope.of(context).requestFocus(nextFocus);
    }
  }
}
