import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:clothes_project/core/resources/app_button.dart';
import 'package:clothes_project/core/resources/app_colors.dart';
import 'package:clothes_project/core/resources/app_loading.dart';
import 'package:clothes_project/core/resources/snack_bar.dart';
import 'package:clothes_project/features/auth/auth_cubit.dart';
import 'package:clothes_project/features/home/view.dart';
import 'package:clothes_project/features/home_nav/view.dart';
import 'package:clothes_project/features/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/resources/app_field.dart';
import '../signup/view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,

        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is loginFailure) {
              showSnakeBar(
                msg: state.msg,
                type: AnimatedSnackBarType.error,
                context: context,
              );
            }

            if (state is loginSuccess) {
              showSnakeBar(
                msg: "Login Successfully",
                type: AnimatedSnackBarType.success,
                context: context,
              );
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomeNav()),
              );
            }
          },
          builder: (context, state) {
            final cubit = context.read<AuthCubit>();
            if (state is loginLoading) {
              return LoddingScreen();
            }

            return SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Login to your account",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "It’s great to see you again.",
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 32),
                          Text(
                            "User Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          AppField(
                            hintText: "Enter your user name",
                            endIcon: SizedBox(),
                            controller: cubit.userNameControl,
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          CustomPasswordField(
                            hintText: "Enter your password",
                            controller: cubit.passwordControl,
                          ),
                          SizedBox(height: 48),
                          GestureDetector(
                            onTap: () {
                              cubit.login();
                            },
                            child: AppButton(
                              content: "Sign In",
                              btnColor: AppColors.primaryColor,
                              contentColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account?",
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Join",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
