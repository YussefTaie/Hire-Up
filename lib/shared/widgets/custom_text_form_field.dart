import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/core/theme/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.controller, required this.hintText, required this.prefixIcon, required this.isPassword});
  final TextEditingController controller;
  final String hintText;
  final String prefixIcon;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    width: 361,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        controller:  controller,
                        decoration: InputDecoration(
                          hintText: hintText,
                          hintStyle: AppTextStyle.hint,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 16,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              prefixIcon,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: AppColors.gray500),
                          ),
                        ),
                      ),
                    ),
                  );
  }
}