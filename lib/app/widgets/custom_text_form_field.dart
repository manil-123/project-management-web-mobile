import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final bool? enabled;
  final bool? obsecure;
  final double? verticalPadding;
  final double? horizontalPadding;
  final FocusNode? nextNode;
  final Function(String?)? onFieldSubmitted;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatter;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final double? borderWidth;
  final Color? labelColor;
  final Color? fillColor;
  final Function()? onSufficIconPress;

  const CustomTextFormField({
    Key? key,
    this.controller,
    this.labelText,
    this.keyboardType,
    this.validator,
    this.readOnly,
    this.enabled,
    this.obsecure,
    this.horizontalPadding,
    this.verticalPadding,
    this.nextNode,
    this.onFieldSubmitted,
    this.focusNode,
    this.inputFormatter,
    this.suffixIcon,
    this.prefixIcon,
    this.borderWidth,
    this.labelColor,
    this.fillColor,
    this.onSufficIconPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.name,
      inputFormatters: inputFormatter,
      onFieldSubmitted: (value) {
        if (onFieldSubmitted != null) {
          onFieldSubmitted!(value);
        }
        FocusScope.of(context).requestFocus(nextNode);
      },
      focusNode: focusNode,
      readOnly: readOnly ?? false,
      enabled: enabled ?? true,
      obscureText: obsecure ?? false,
      style: const TextStyle(
        fontSize: 14,
      ),
      decoration: InputDecoration(
        isDense: true,
        labelText: labelText,
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                size: 16.0,
              )
            : null,
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: onSufficIconPress,
                icon: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Icon(
                    suffixIcon,
                    size: 20.0,
                  ),
                ),
              )
            : null,
        suffixIconConstraints: const BoxConstraints(
          minWidth: 0, // Set minimum width to zero
          minHeight: 0, // Set minimum height to zero
        ),
        labelStyle: const TextStyle(
          fontSize: 14,
        ),
        hintStyle: const TextStyle(
          fontSize: 14,
        ),
        fillColor: fillColor,
        filled: fillColor != null ? true : false,
        contentPadding: EdgeInsets.symmetric(
          vertical: verticalPadding ?? 16,
          horizontal: horizontalPadding ?? 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.3),
            width: borderWidth ?? 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.3),
            width: borderWidth ?? 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: Colors.red,
            width: borderWidth ?? 1.5,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.3),
            width: borderWidth ?? 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: Colors.red,
            width: borderWidth ?? 1.5,
          ),
        ),
      ),
      validator: validator,
    );
  }
}
