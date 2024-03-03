import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uni_tool/auth/presentation/screens/auth_verification_screen.dart';
import 'package:uni_tool/auth/presentation/widgets/auth_text_field.dart';
import 'package:uni_tool/auth/presentation/widgets/submit_elevated_button.dart';
import 'package:uni_tool/core/common/app_images.dart';
import 'package:uni_tool/core/common/app_text_styles.dart';
import 'package:uni_tool/core/common/strings.dart';
import 'package:uni_tool/core/common/widgets/vertical_space.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final FocusNode emailFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const VerticalSpace(
                  space: 64,
                ),
                SvgPicture.asset(
                  AppImages.forgotPasswordImage,
                ),
                const VerticalSpace(
                  space: 14,
                ),
                const SizedBox(
                  width: 130,
                  child: Text(
                    'Forgot Password?',
                    style: AppTextStyles.h2,
                  ),
                ),
                Text(
                  kForgotPasswordText,
                  style: AppTextStyles.body2.copyWith(
                    fontSize: 12,
                  ),
                ),
                const VerticalSpace(
                  space: 50,
                ),
                AuthTextField(
                  focusNode: emailFocusNode,
                  hintText: 'Email',
                  prefixIcon: Icons.email_outlined,
                ),
                const VerticalSpace(
                  space: 50,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SubmitElevatedButton(
                    textChild: 'Submit',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const AuthVerificationScreen();
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
