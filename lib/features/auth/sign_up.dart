import 'package:flutter/material.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/shared/widgets/custom_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: CustomText(
          text: 'Hello',
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: AppColors.black,
        ),
      ),
    );
  }
}
