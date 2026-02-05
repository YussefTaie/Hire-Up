import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/features/auth/login_page.dart';
import 'package:hireup/features/auth/role_selection_page.dart';
import 'package:hireup/shared/widgets/custom_button.dart';
import 'package:hireup/shared/widgets/custom_fotter.dart';
import 'package:hireup/shared/widgets/custom_header.dart';
import 'package:hireup/shared/widgets/custom_text.dart';
import 'package:hireup/shared/widgets/custom_text_button.dart';
import 'package:hireup/shared/widgets/custom_text_form_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Center(
          child: Column(
            children: [
              CustomHeader(
                gap: 60,
                title: 'ابدأ رحلتك',
                subtitle: 'إنشاء حساب',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: _emailController,
                      hintText: 'البريد الإلكتروني',
                      prefixIcon: 'assets/icons/appicons/mail.svg',
                      isPassword: false,
                    ),
                    Gap(16),
                    CustomTextFormField(
                      controller: _passwordController,
                      hintText: 'كلمة المرور',
                      prefixIcon: 'assets/icons/appicons/lock.svg',
                      isPassword: true,
                    ),
                    Gap(16),
                    CustomTextFormField(
                      controller: _confirmPasswordController,
                      hintText: 'تأكيد كلمة المرور',
                      prefixIcon: 'assets/icons/appicons/lock.svg',
                      isPassword: true,
                    ),
                    Gap(16),
                    CustomButton(
                      text: 'إنشاء حساب',
                      onTap: () {
                        if (_emailController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty &&
                            _confirmPasswordController.text.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RoleSelectionPage(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'الرجاء إدخال البريد الإلكتروني وكلمة المرور',
                                style: TextStyle(color: AppColors.white),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                    Gap(16),
                    CustomFotter(),
                    Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButton(
                          text: 'تسجيل الدخول',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          color: AppColors.black,
                        ),
                        CustomText(
                          text: 'لديك حساب بالفعل؟ ',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.gray500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
