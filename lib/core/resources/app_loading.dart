import 'package:clothes_project/core/resources/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoddingScreen extends StatelessWidget {
  const LoddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(AppImages.loddingAnimation),
      ),
    );
  }
}
