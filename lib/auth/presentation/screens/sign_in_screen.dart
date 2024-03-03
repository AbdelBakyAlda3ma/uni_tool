import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uni_tool/auth/presentation/widgets/auth_text_field.dart';
import 'package:uni_tool/auth/presentation/widgets/background_shape_painter.dart';
import 'package:uni_tool/auth/presentation/widgets/centered_text_within_divider.dart';
import 'package:uni_tool/auth/presentation/widgets/forgot_password_button_text_button.dart';
import 'package:uni_tool/auth/presentation/widgets/row_of_account_buttons.dart';
import 'package:uni_tool/auth/presentation/widgets/sign_in_elevated_button.dart';
import 'package:uni_tool/auth/presentation/widgets/sign_up_text_button.dart';
import 'package:uni_tool/core/common/app_colors.dart';
import 'package:uni_tool/core/common/app_images.dart';
import 'package:uni_tool/core/common/app_text_styles.dart';
import 'package:uni_tool/core/common/widgets/vertical_space.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  FocusNode nameFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomPaint(
          painter: BackgroundShapePainter(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const VerticalSpace(
                    space: 150,
                  ),
                  Text(
                    'Welcome Back!',
                    style: AppTextStyles.h1.copyWith(
                      color: AppColors.mainColorBlack,
                    ),
                  ),
                  SvgPicture.asset(
                    AppImages.welcomingImage,
                  ),
                  const VerticalSpace(
                    space: 30,
                  ),
                  AuthTextField(
                    focusNode: nameFocusNode,
                    hintText: 'full name',
                    prefixIcon: Icons.account_circle_outlined,
                  ),
                  const VerticalSpace(
                    space: 20,
                  ),
                  AuthTextField(
                    focusNode: passwordFocusNode,
                    hintText: 'password',
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: Icons.visibility_off,
                  ),
                  const ForgotPasswordTextButton(),
                  const SignInElevatedButton(),
                  const CenteredTextWithinDivider(text: 'Sign In With'),
                  const RowOfAccoutsButtons(),
                  const SignUpTextButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
