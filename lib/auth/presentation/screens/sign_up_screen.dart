import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uni_tool/auth/presentation/widgets/background_shape_painter.dart';
import 'package:uni_tool/auth/presentation/widgets/centered_text_within_divider.dart';
import 'package:uni_tool/auth/presentation/widgets/row_of_account_buttons.dart';
import 'package:uni_tool/auth/presentation/widgets/sign_in_elevated_button.dart';
import 'package:uni_tool/auth/presentation/widgets/sign_up_form.dart';
import 'package:uni_tool/auth/presentation/widgets/sign_up_text_button.dart';
import 'package:uni_tool/auth/presentation/widgets/termes_and_contdition_check.dart';
import 'package:uni_tool/core/common/app_colors.dart';
import 'package:uni_tool/core/common/app_images.dart';
import 'package:uni_tool/core/common/app_text_styles.dart';
import 'package:uni_tool/core/common/widgets/horizontal_space.dart';
import 'package:uni_tool/core/common/widgets/vertical_space.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomPaint(
          painter: BackgroundShapePainter(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            alignment: Alignment.center,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const VerticalSpace(
                        space: 80,
                      ),
                      Text(
                        'Create Account',
                        style: AppTextStyles.h1.copyWith(
                          color: AppColors.mainColorBlack,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const HorizontalSpace(
                            space: 40,
                          ),
                          SvgPicture.asset(
                            AppImages.createAccoutImage,
                          ),
                        ],
                      ),
                      const VerticalSpace(
                        space: 10,
                      ),
                      const SignUpForm(),
                      const TermsAndConditionsCheck(),
                      const SignInElevatedButton(),
                      const CenteredTextWithinDivider(text: 'Sign Up With'),
                      const RowOfAccoutsButtons(),
                      const SignUpTextButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
