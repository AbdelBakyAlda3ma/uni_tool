import 'package:flutter/material.dart';
import 'package:uni_tool/core/common/widgets/primary_button.dart';

class SubmitElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String textChild;
  const SubmitElevatedButton({
    super.key,
    this.onPressed,
    required this.textChild,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256,
      child: PrimaryButton(
        textChild: textChild,
        onPressed: onPressed,
      ),
    );
  }
}
