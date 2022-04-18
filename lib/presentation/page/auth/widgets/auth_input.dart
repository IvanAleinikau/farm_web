import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry padding;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final bool readOnly;

  const AuthInput({
    Key? key,
    required this.hintText,
    required this.padding,
    required this.controller,
    this.validator,
    required this.obscureText,
    this.suffixIcon,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextFormField(
        cursorColor: Colors.black,
        readOnly: readOnly,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: FarmTextStyles.roboto20w400.copyWith(color: const Color(0xffE0E0E0)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.black),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
        controller: controller,
        validator: validator,
        obscureText: obscureText,
      ),
    );
  }
}
