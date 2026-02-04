import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/features/auth/login_page.dart';
import 'package:hireup/features/auth/signup_page.dart';
import 'package:hireup/shared/widgets/custom_button.dart';
import 'package:hireup/shared/widgets/custom_fotter.dart';
import 'package:hireup/shared/widgets/custom_header.dart';
import 'package:hireup/shared/widgets/custom_text_button.dart';

class LoginCreateAcc extends StatefulWidget {
  const LoginCreateAcc({super.key});

  @override
  State<LoginCreateAcc> createState() => _LoginCreateAccState();
}

class _LoginCreateAccState extends State<LoginCreateAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          children: [
            CustomHeader(
              gap: 140,
              title: 'النجاح يبدأ بضغطة واحدة',
              subtitle: 'تسجيل الدخول / إنشاء حساب',
            ),
            CustomButton(
              text: 'تسجيل الدخول',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
            Gap(28),
            CustomTextButton(
              text: 'انشاء حساب',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupPage()),
                );
              },
            ),
            Gap(36),
            CustomFotter(),
          ],
        ),
      ),
    );
  }
}
