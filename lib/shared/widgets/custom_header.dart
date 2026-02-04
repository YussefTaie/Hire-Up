import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/shared/widgets/custom_text.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.gap,
  });
  final String title;
  final String subtitle;
  final double gap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(gap),
        Image.asset('assets/images/logo/logo.png', width: 152, height: 152),
        Gap(16),
        CustomText(
          text: title,
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
        Gap(16),
        CustomText(
          text: subtitle,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: AppColors.gray500,
        ),
        Gap(24),
      ],
    );
  }
}
