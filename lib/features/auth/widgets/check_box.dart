import 'package:flutter/material.dart';
import 'package:hireup/core/theme/app_colors.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key, required this.onChanged, required this.value});

  final void Function(bool?)? onChanged;
  final bool value;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
 

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: widget.value,
      onChanged: widget.onChanged,
      checkColor: AppColors.primary,
      fillColor: WidgetStateProperty.all(AppColors.background),
      side: WidgetStateBorderSide.resolveWith(
        (states) => BorderSide(color: AppColors.gray500),
      ),
    );
  }
}
