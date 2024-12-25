import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:os_project/core/extensions/context.dart';

class CustomDropDown<T> extends StatelessWidget {
  const CustomDropDown({
    super.key,
    this.value,
    this.items,
    this.onChanged,
    this.label,
    this.hintText,
    this.currentFocus,
    this.nextFocus,
    this.offset = Offset.zero,
  });

  final T? value;
  final String? label;
  final String? hintText;
  final List<DropdownMenuItem<T>>? items;
  final ValueChanged<T?>? onChanged;
  final FocusNode? currentFocus;
  final FocusNode? nextFocus;
  final Offset offset;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              '$label',
              style: context.textStyle.bodyMedium,
            ),
          ),
        DropdownButtonHideUnderline(
          child: DropdownButton2<T>(
            isExpanded: true,
            hint: Text(
              hintText ?? '',
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xff898F93),
                fontWeight: FontWeight.w400,
              ),
            ),
            focusNode: currentFocus,
            onMenuStateChange: (isMenuOpen) {
              if (isMenuOpen) {
                currentFocus?.unfocus();
                nextFocus?.requestFocus();
              }
            },
            items: items,
            value: value,
            onChanged: onChanged,
            buttonStyleData: ButtonStyleData(
              elevation: 0,
              padding: const EdgeInsets.fromLTRB(0, 2, 12, 2),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(color: Colors.black, width: 1)),
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 300,
              padding: EdgeInsets.zero,
              scrollPadding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
              ),
              offset: offset,
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.keyboard_arrow_down,
              ),
              openMenuIcon: Icon(
                Icons.keyboard_arrow_up,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
