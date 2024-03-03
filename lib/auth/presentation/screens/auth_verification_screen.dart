import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uni_tool/auth/presentation/screens/set_new_password_screen.dart';
import 'package:uni_tool/auth/presentation/widgets/pin_timer.dart';
import 'package:uni_tool/auth/presentation/widgets/submit_elevated_button.dart';
import 'package:uni_tool/auth/presentation/widgets/verification_pin.dart';
import 'package:uni_tool/core/common/app_images.dart';
import 'package:uni_tool/core/common/app_text_styles.dart';
import 'package:uni_tool/core/common/strings.dart';
import 'package:uni_tool/core/common/widgets/custom_text_button.dart';
import 'package:uni_tool/core/common/widgets/vertical_space.dart';

class AuthVerificationScreen extends StatefulWidget {
  const AuthVerificationScreen({super.key});

  @override
  State<AuthVerificationScreen> createState() => _AuthVerificationScreenState();
}

class _AuthVerificationScreenState extends State<AuthVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(
                  space: 64,
                ),
                SvgPicture.asset(
                  AppImages.authVerificationIamge,
                ),
                const VerticalSpace(
                  space: 14,
                ),
                const Text(
                  'Authy Verification',
                  style: AppTextStyles.h2,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    kAuthVerificationText,
                    style: AppTextStyles.body2.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
                const VerticalSpace(
                  space: 50,
                ),
                const VerificationPin(),
                const VerticalSpace(
                  space: 20,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: PinTimer(),
                ),
                const CustomTextButton(
                    note: 'Don’t receive code ?', text: 'Resend'),
                Align(
                  alignment: Alignment.center,
                  child: SubmitElevatedButton(
                    textChild: 'Submit Verification',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SetNewPasswordScreen();
                          },
                        ),
                      );
                    },
                  ),
                ),
                const VerticalSpace(
                  space: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
