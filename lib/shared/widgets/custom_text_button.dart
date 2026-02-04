import 'package:flutter/material.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/shared/widgets/custom_text.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, required this.onTap, this.color = AppColors.primary});
  final String text;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: CustomText(
        text: text,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}
