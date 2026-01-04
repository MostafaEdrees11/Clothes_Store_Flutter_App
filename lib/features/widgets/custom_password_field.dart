import 'package:clothes_project/core/resources/app_colors.dart';
import 'package:clothes_project/core/resources/app_field.dart';
import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, required this.hintText, this.controller});

  final String hintText;
  final TextEditingController? controller;


  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return AppField(
      hintText: widget.hintText,
      isHidden: isHidden,
      endIcon: GestureDetector(
        onTap: (){
          setState(() {
            isHidden = !isHidden;
          });
        },
        child: isHidden
            ? Icon(Icons.visibility_off, color: AppColors.primaryColor)
            : Icon(Icons.visibility, color: AppColors.primaryColor),
      ),
      controller: widget.controller,
    );
  }
}
