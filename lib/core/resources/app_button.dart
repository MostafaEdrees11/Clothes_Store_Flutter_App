import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key, required this.content, this.preIcon, this.postIcon, required this.btnColor, required this.contentColor,
  });

  final Widget? preIcon;
  final String content;
  final Widget? postIcon;
  final Color btnColor;
  final Color contentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
          preIcon??SizedBox.shrink(),
          Text(
            content,
            style: TextStyle(
              color: contentColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          postIcon??SizedBox.shrink()
        ],
      ),
    );
  }
}
