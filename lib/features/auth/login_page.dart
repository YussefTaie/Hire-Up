import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/features/auth/role_selection_page.dart';
import 'package:hireup/features/auth/signup_page.dart';
import 'package:hireup/features/auth/widgets/check_box.dart';
import 'package:hireup/shared/widgets/custom_button.dart';
import 'package:hireup/shared/widgets/custom_fotter.dart';
import 'package:hireup/shared/widgets/custom_header.dart';
import 'package:hireup/shared/widgets/custom_text.dart';
import 'package:hireup/shared/widgets/custom_text_button.dart';
import 'package:hireup/shared/widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _rememberMe = false;
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
                title: 'مرحباً بعودتك إلى رحلتك',
                subtitle: 'تسجيل الدخول إلى حسابك',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CheckBoxWidget(
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe = value!;
                                });
                              },
                              value: _rememberMe,
                            ),
                            CustomText(
                              text: 'تذكرني',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.gray500,
                            ),
                          ],
                        ),
                        CustomTextButton(
                          text: 'نسيت كلمة المرور',
                          onTap: () {},
                          color: AppColors.gray500,
                        ),
                      ],
                    ),
                    Gap(16),
                    CustomButton(
                      text: 'تسجيل الدخول',
                      onTap: () {
                        if (_emailController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty) {
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
                          text: 'سجل الأن',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupPage(),
                              ),
                            );
                          },
                          color: AppColors.black,
                        ),
                        CustomText(
                          text: 'ليس لديك حساب؟',
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
