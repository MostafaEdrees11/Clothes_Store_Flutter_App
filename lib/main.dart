import 'package:clothes_project/core/network/dio_helper.dart';
import 'package:clothes_project/features/Splash/view.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.initDio();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothes Project',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}