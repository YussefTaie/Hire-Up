import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/shared/widgets/custom_text.dart';
import 'package:hireup/splash/onbordingslides/onboarding_page.dart';
import 'package:hireup/splash/widgets/custom_language_selection.dart';

class LanguageSelectionPage extends StatefulWidget {
  const LanguageSelectionPage({super.key});

  @override
  State<LanguageSelectionPage> createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  String? _selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          children: [
            Gap(95),
            Image.asset('assets/images/logo/logo.png', width: 152, height: 152),
            Gap(48),
            CustomText(
              text: 'اختر لغة التطبيق',
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
            Gap(16),
            CustomText(
              text: 'Choose App Language',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.gray500,
            ),
            Gap(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomLanguageSelection(
                      language: 'English',
                      selectedLanguage: _selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          _selectedLanguage = value;
                        });
                      },
                    ),
                    CustomLanguageSelection(
                      language: 'العربية',
                      selectedLanguage: _selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          _selectedLanguage = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Gap(48),
            InkWell(
              onTap: () {
                if (_selectedLanguage != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingPage(),
                    ),
                  );
                }
              },
              child: Container(
                width: 361,
                height: 60,
                decoration: BoxDecoration(
                  color: _selectedLanguage != null
                      ? AppColors.primary
                      : AppColors.primary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: CustomText(
                    text: 'متابعة',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: _selectedLanguage != null
                        ? AppColors.white
                        : AppColors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
