import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/shared/widgets/custom_button.dart';
import 'package:hireup/shared/widgets/custom_text.dart';

class CustomFotter extends StatelessWidget {
  const CustomFotter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset('assets/icons/appicons/devider.svg'),
        Gap(24),
        CustomText(
          text: 'او تسجيل الدخول عن طريق',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.gray500,
        ),
        Gap(16),
        CustomButton(
          text: 'جوجل',
          onTap: () {},
          border: Border.all(color: AppColors.primary),
          color: AppColors.background,
          textColor: AppColors.primary,
          svgIcon: 'assets/icons/social/google.svg',
        ),
        Gap(16),
        CustomButton(
          text: 'فيسبوك',
          onTap: () {},
          border: Border.all(color: AppColors.primary),
          color: AppColors.background,
          textColor: AppColors.primary,
          svgIcon: 'assets/icons/social/facebook.svg',
        ),
      ],
    );
  }
}