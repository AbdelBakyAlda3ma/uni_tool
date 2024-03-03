import 'package:flutter/material.dart';
import 'package:uni_tool/auth/presentation/screens/forgot_password_screen.dart';

import 'package:uni_tool/core/common/widgets/custom_text_button.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      note: 'Forgot Password?',
      text: 'Click Here',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const ForgotPasswordScreen();
            },
          ),
        );
      },
    );
  }
}
