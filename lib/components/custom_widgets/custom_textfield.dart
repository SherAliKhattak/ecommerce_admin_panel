import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double? width;
  final dynamic onChanged;
  final String? hintText;
  final dynamic validation;
  final dynamic prefixIcon;
  final dynamic maxLines;
  final dynamic minLines;
  final String? initialValue;
  final dynamic keyBoardType;
  final dynamic controller;
  final double borderRadius;
  final bool check;
  final bool readOnly;
  final EdgeInsetsGeometry? padding;
  final dynamic fromSignuporSignIn;
  final VoidCallback? function;
  final dynamic suffixIconData;
  final EdgeInsetsGeometry? margin;
  const CustomTextField(
      {Key? key,
      this.function,
      this.suffixIconData,
      this.fromSignuporSignIn,
      this.check = false,
      this.readOnly = false,
      required this.borderRadius,
      this.controller,
      this.keyBoardType,
      this.hintText,
      this.prefixIcon,
      this.initialValue,
      this.onChanged,
      this.maxLines,
      this.minLines,
      this.validation,
      this.padding,
      this.margin,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      child: TextFormField(
        validator: validation,
        onChanged: onChanged,
        controller: controller,
        readOnly: readOnly,
        maxLines: maxLines ?? 1,
        initialValue: initialValue ?? '',
        keyboardType: keyBoardType ?? TextInputType.text,
        obscureText: check,
        decoration: InputDecoration(
          enabledBorder:
              outlineInputBorder(Theme.of(context).hintColor, borderRadius),
          focusedBorder: outlineInputBorder(kprimary, borderRadius),
          errorBorder: outlineInputBorder(Colors.red, borderRadius),
          focusedErrorBorder: outlineInputBorder(Colors.grey, borderRadius),
          fillColor: Colors.white,
          filled: true,
          suffixIcon: fromSignuporSignIn == true
              ? suffixIconData
              : IconButton(
                  onPressed: function,
                  color: check ? Colors.blue : Colors.grey,
                  icon: Icon(
                    suffixIconData,
                    size: 25,
                  ),
                ),
          contentPadding: padding,
          prefixIcon: prefixIcon,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder(Color color, double radius) =>
    OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.0),
      borderRadius: BorderRadius.circular(radius),
    );
