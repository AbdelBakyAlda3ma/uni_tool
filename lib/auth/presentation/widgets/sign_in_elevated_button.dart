import 'package:flutter/material.dart';
import 'package:uni_tool/core/common/widgets/primary_button.dart';

class SignInElevatedButton extends StatelessWidget {
  const SignInElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 212,
      child: PrimaryButton(
        textChild: 'Sign in',
        borderRadius: 16,
        onPressed: () {},
      ),
    );
  }
}
