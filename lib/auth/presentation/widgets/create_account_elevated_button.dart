import 'package:flutter/material.dart';
import 'package:uni_tool/core/common/widgets/primary_button.dart';

class CreateAccountElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  const CreateAccountElevatedButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: PrimaryButton(
        textChild: 'Create Account',
        onPressed: onPressed,
      ),
    );
  }
}
