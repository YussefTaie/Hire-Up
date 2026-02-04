import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hireup/shared/widgets/custom_text.dart';

class OnboardingSlide extends StatelessWidget {
  final String title;
  final String image;

  const OnboardingSlide({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Gap(60),
        CustomText(
          text: title,
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        Gap(60),
        Image.asset(image, width: 320),
      ],
    );
  }
}
