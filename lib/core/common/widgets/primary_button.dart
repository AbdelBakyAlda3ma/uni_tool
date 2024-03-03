import 'package:flutter/material.dart';
import 'package:uni_tool/core/common/app_colors.dart';
import 'package:uni_tool/core/common/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String textChild;
  final double borderRadius;
  final void Function()? onPressed;

  const PrimaryButton({
    super.key,
    required this.textChild,
    this.borderRadius = 6,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        disabledBackgroundColor: const Color(0xff8E8E8E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: AppColors.mainColor,
      ),
      onPressed: onPressed,
      child: Text(
        textChild,
        style: AppTextStyles.h1.copyWith(
          color: AppColors.mainColorWhite,
          fontSize: 14,
        ),
      ),
    );
  }
}
