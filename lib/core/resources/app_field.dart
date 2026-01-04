import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppField extends StatelessWidget {
  const AppField({
    super.key, required this.hintText, required this.endIcon, this.isHidden = false, this.controller});

  final String hintText;
  final Widget endIcon;
  final bool isHidden;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isHidden,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE6E6E6)),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(15),
        ),
        suffixIcon: endIcon,
      ),
    );
  }
}
