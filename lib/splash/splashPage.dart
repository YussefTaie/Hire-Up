import 'package:flutter/material.dart';
import 'package:hireup/core/theme/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,

      body: Center(child: Image.asset('assets/images/logo/logo.png')),
    );
  }
}
