import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uni_tool/auth/presentation/screens/sign_in_screen.dart';
import 'package:uni_tool/auth/presentation/widgets/submit_elevated_button.dart';
import 'package:uni_tool/core/common/app_images.dart';
import 'package:uni_tool/core/common/app_text_styles.dart';
import 'package:uni_tool/core/common/widgets/vertical_space.dart';

class PasswordRecoveryModalSheet extends StatelessWidget {
  const PasswordRecoveryModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const VerticalSpace(
          space: 30,
        ),
        SvgPicture.asset(
          AppImages.passwordRecoveryImage,
        ),
        const VerticalSpace(
          space: 30,
        ),
        Text(
          'Password Recovery Successful',
          textAlign: TextAlign.center,
          style: AppTextStyles.h1.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
        ),
        const VerticalSpace(
          space: 10,
        ),
        Text(
          'Return to the login screen to enter the application',
          textAlign: TextAlign.center,
          style: AppTextStyles.body1.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const VerticalSpace(
          space: 50,
        ),
        SubmitElevatedButton(
          textChild: 'Return to login',
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SignInScreen();
                },
              ),
              (route) {
                return true;
              },
            );
          },
        ),
      ],
    );
  }
}
