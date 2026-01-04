import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:clothes_project/core/resources/app_button.dart';
import 'package:clothes_project/core/resources/app_loading.dart';
import 'package:clothes_project/features/auth/auth_cubit.dart';
import 'package:clothes_project/features/home_nav/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_field.dart';
import '../../../core/resources/snack_bar.dart';
import '../../home/view.dart';
import '../../widgets/custom_password_field.dart';
import '../login/view.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is signUpFailure) {
              showSnakeBar(
                msg: state.msg,
                type: AnimatedSnackBarType.error,
                context: context,
              );
            }

            if (state is signUpSuccess) {
              showSnakeBar(
                msg: "Sign Up Successfully",
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
            if (state is signUpLoading) {
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
                            "Create an account",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Let’s create your account.",
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 24),
                          Text(
                            "User Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          AppField(
                            hintText: "Enter your email address",
                            endIcon: SizedBox(),
                            controller: cubit.signUpUserName,
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          AppField(
                            hintText: "Enter your email",
                            endIcon: SizedBox(),
                            controller: cubit.signUpEmail,
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
                            controller: cubit.signUpPassword,
                          ),
                          SizedBox(height: 48),
                          GestureDetector(
                            onTap: () {
                              cubit.signup();
                            },
                            child: AppButton(
                              content: "Create Account",
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
                            "Already have an account?",
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
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Log In",
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
