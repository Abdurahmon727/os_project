import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';
import 'custom_text_field.dart';

class CustomObscureTextField extends StatefulWidget {
  const CustomObscureTextField({
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
  State<CustomObscureTextField> createState() => _CustomObscureTextFieldState();
}

class _CustomObscureTextFieldState extends State<CustomObscureTextField> {
  late bool obscure = widget.obscure;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.labelText != null && !widget.labelInTextField)
            Text(
              widget.labelText!,
              style: widget.labelTextStyle ?? context.textStyle.bodyMedium,
            ),
          if (widget.labelText != null && !widget.labelInTextField) 8.h,
          TextFormField(
            readOnly: widget.readOnly ?? false,
            style: context.textTheme.bodyLarge,
            controller: widget.controller,
            validator: widget.validator,
            onChanged: widget.onChanged,
            keyboardType: widget.textInputType,
            focusNode: widget.currentFocus,
            textCapitalization: widget.textCapitalization,
            cursorColor: widget.cursorColor ?? context.colorScheme.primary,
            enableInteractiveSelection: true,
            obscureText: obscure,
            enabled: widget.enabled,
            textInputAction: widget.textInputAction,
            maxLines: widget.maxLines,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onTap: widget.onTap,
            onEditingComplete: () {
              if (widget.nextFocus != null) {
                widget.nextFocus?.requestFocus();
              } else {
                widget.currentFocus?.unfocus();
              }
            },
            onFieldSubmitted: (_) => _fieldFocusChange(
              context,
              widget.currentFocus,
              widget.nextFocus,
            ),
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              labelText: widget.labelInTextField ? widget.labelText : null,
              labelStyle: widget.labelTextStyle ??
                  context.textStyle.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
              iconColor: context.colorScheme.primary,
              hintText: widget.hintText,
              errorText: widget.errorText,
              contentPadding: widget.contentPadding,
              suffix: widget.suffix,
              suffixIconColor: const Color(0xFF71717A),
              prefixIconColor: const Color(0xFF71717A),
              prefix: widget.prefix,
              prefixIcon: widget.prefixIcon,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
                icon: obscure
                    ? const Icon(Icons.remove_red_eye)
                    : const Icon(Icons.hide_source_outlined),
              ),
              prefixText: widget.prefixText,
              prefixStyle: widget.prefixTextStyle,
              suffixText: widget.suffixText,
              suffixStyle: widget.suffixTextStyle,
              errorStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: context.colorScheme.error,
              ),
            ),
            cursorHeight: widget.cursorHeight,
            autofillHints: widget.autofillHints,
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
