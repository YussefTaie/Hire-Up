import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/shared/widgets/custom_text.dart';

class CustomSelection extends StatelessWidget {
  final String language;
  final String? selectedLanguage;
  final ValueChanged<String?> onChanged;
  final double width;
  final double height;
  final String? image;

  const CustomSelection({
    super.key,
    required this.language,
    required this.selectedLanguage,
    required this.onChanged,
    this.width = 172,
    this.height = 70,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Radio<String>(
            value: language,
            groupValue: selectedLanguage,
            activeColor: AppColors.primary,
            onChanged: onChanged,
          ),
          Row(
            children: [
              CustomText(
                text: language,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
              Gap(10),
              image == null ? SizedBox.shrink() : SvgPicture.asset(image!),
            ],
          ),
        ],
      ),
    );
  }
}
