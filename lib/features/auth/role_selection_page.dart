import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hireup/core/theme/app_colors.dart';
import 'package:hireup/shared/widgets/custom_button.dart';
import 'package:hireup/shared/widgets/custom_header.dart';
import 'package:hireup/splash/widgets/custom_selection.dart';

class RoleSelectionPage extends StatefulWidget {
  const RoleSelectionPage({super.key});

  @override
  State<RoleSelectionPage> createState() => _RoleSelectionPageState();
}

class _RoleSelectionPageState extends State<RoleSelectionPage> {
  String? _selectedRole;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          children: [
            CustomHeader(gap: 170, title: 'اختر دورك', subtitle: 'حدد دورك'),
            CustomSelection(
              image: 'assets/icons/appicons/business.svg',
              language: 'باحث عن عمل',
              selectedLanguage: _selectedRole,
              width: 361,
              height: 80,
              onChanged: (value) {
                setState(() {
                  _selectedRole = value;
                });
              },
            ),
            Gap(16),
            CustomSelection(
              image: 'assets/icons/appicons/building2.svg',
              language: 'شركة',
              selectedLanguage: _selectedRole,
              width: 361,
              height: 80,
              onChanged: (value) {
                setState(() {
                  _selectedRole = value;
                });
              },
            ),
            Gap(16),
            CustomButton(
              text: 'متابعة',
              onTap: () {
                if (_selectedRole != null) {
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
                        'الرجاء اختيار دورك',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
