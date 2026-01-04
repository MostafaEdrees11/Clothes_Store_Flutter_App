import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:clothes_project/core/resources/app_button.dart';
import 'package:clothes_project/core/resources/cache_helper.dart';
import 'package:clothes_project/core/resources/snack_bar.dart';
import 'package:clothes_project/features/auth/login/view.dart';
import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error, color: Color(0xFFED1010), size: 80),
          const SizedBox(height: 16),
          const Text(
            "Logout",
            style: TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Are you sure you want to logout?",
            style: TextStyle(
              color: Color(0xFF808080),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () async {
              await CacheHelper.deleteToken(await CacheHelper.getToken());
              showSnakeBar(msg: "Logout Successfully", type: AnimatedSnackBarType.success, context: context);
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => LoginScreen()),
                (route) => false,
              );
            },
            child: const AppButton(
              content: "Yes, Logout",
              btnColor: Color(0xFFED1010),
              contentColor: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const AppButton(
                content: "No, Cancel",
                btnColor: Colors.white,
                contentColor: Color(0xFF1A1A1A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
