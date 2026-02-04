import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/shared/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color = AppColors.primary,
    this.border,
    this.textColor = AppColors.white,
    this.svgIcon,
  });

  final String text;
  final VoidCallback onTap;
  final Color color;
  final BoxBorder? border;
  final Color textColor;
  final String? svgIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 361,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          border: border,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (svgIcon != null) SvgPicture.asset(svgIcon!),
              if (svgIcon != null) Gap(8),
              CustomText(
                text: text,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
