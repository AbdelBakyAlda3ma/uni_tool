import 'package:flutter/material.dart';
import 'package:uni_tool/auth/presentation/screens/sign_up_screen.dart';

import 'package:uni_tool/core/common/widgets/custom_text_button.dart';

class SignUpTextButton extends StatelessWidget {
  const SignUpTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      note: 'Don’t have an account?',
      text: 'Sign Up',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const SignUpScreen();
            },
          ),
        );
      },
    );
  }
}
