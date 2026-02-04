import 'package:flutter/material.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/shared/widgets/custom_text.dart';

class CustomLanguageSelection extends StatelessWidget {
  final String language;
  final String? selectedLanguage;
  final ValueChanged<String?> onChanged;

  const CustomLanguageSelection({
    super.key,
    required this.language,
    required this.selectedLanguage,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 172,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Radio<String>(
            value: language,
            groupValue: selectedLanguage,
            activeColor: AppColors.primary,
            onChanged: onChanged,
          ),
          CustomText(
            text: language,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
