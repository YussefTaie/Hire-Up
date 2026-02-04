import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/features/auth/login_create_acc.dart';
import 'package:hireup/shared/widgets/custom_button.dart';
import 'package:hireup/shared/widgets/custom_text.dart';
import 'onboarding_slide.dart';
import 'onboarding_slide_model.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<OnboardingSlideModel> slides = const [
    OnboardingSlideModel(
      title: 'ابحث عن وظيفة احلامك',
      image: 'assets/images/splashslides/slide1.png',
    ),
    OnboardingSlideModel(
      title: 'نمي مسيرتك المهنية',
      image: 'assets/images/splashslides/slide2.png',
    ),
    OnboardingSlideModel(
      title: 'توظيف المواهب المناسبة',
      image: 'assets/images/splashslides/slide3.png',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: List.generate(
                  slides.length,
                  (index) => Container(
                    width: 120,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _currentIndex == index
                          ? AppColors.primary
                          : AppColors.gray500,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: slides.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                final slide = slides[index];
                return OnboardingSlide(title: slide.title, image: slide.image);
              },
            ),
          ),
          // Indicator + Button
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: Column(
              children: [
                CustomButton(
                  text: _currentIndex == slides.length - 1 ? 'ابدأ' : 'متابعة',
                  onTap: () {
                    if (_currentIndex < slides.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginCreateAcc(),
                        ),
                      );
                    }
                  },
                ),
                Gap(16),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginCreateAcc(),
                      ),
                    );
                  },
                  child: CustomText(
                    text: 'تخطي',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
