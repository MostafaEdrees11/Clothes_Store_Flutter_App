import 'package:clothes_project/core/resources/app_images.dart';
import 'package:clothes_project/core/resources/cache_helper.dart';
import 'package:clothes_project/features/auth/login/view.dart';
import 'package:clothes_project/features/home/view.dart';
import 'package:clothes_project/features/home_nav/view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), ()async {
      CacheHelper.getToken().then((value){
        if(mounted) {
          if(value.isNotEmpty) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeNav()));
          } else {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginScreen()));
          }
        }
      });
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(AppImages.onlineShoppingAnimation),
      ),
    );
  }
}
