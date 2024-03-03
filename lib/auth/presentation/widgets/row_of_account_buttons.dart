import 'package:flutter/material.dart';
import 'package:uni_tool/auth/presentation/widgets/accout_button.dart';
import 'package:uni_tool/core/common/app_images.dart';

class RowOfAccoutsButtons extends StatelessWidget {
  const RowOfAccoutsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AccountButton(
          image: AppImages.facebookLogo,
        ),
        AccountButton(
          image: AppImages.googleLogo,
        ),
        AccountButton(
          image: AppImages.appleLogo,
        ),
        AccountButton(
          image: AppImages.twitterLogo,
        ),
      ],
    );
  }
}
