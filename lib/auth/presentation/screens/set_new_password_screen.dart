import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uni_tool/auth/presentation/widgets/auth_text_field.dart';
import 'package:uni_tool/auth/presentation/widgets/password_recovery_modal_sheet.dart';
import 'package:uni_tool/auth/presentation/widgets/submit_elevated_button.dart';
import 'package:uni_tool/core/common/app_images.dart';
import 'package:uni_tool/core/common/app_text_styles.dart';
import 'package:uni_tool/core/common/strings.dart';
import 'package:uni_tool/core/common/widgets/vertical_space.dart';

class SetNewPasswordScreen extends StatefulWidget {
  const SetNewPasswordScreen({super.key});

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
  final FocusNode newPasswordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();

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
                  AppImages.newPasswordImage,
                ),
                const VerticalSpace(
                  space: 14,
                ),
                const Text(
                  'Set new password',
                  style: AppTextStyles.h2,
                ),
                SizedBox(
                  width: 220,
                  child: Text(
                    kSetNewPasswordText,
                    style: AppTextStyles.body2.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
                const VerticalSpace(
                  space: 30,
                ),
                AuthTextField(
                  focusNode: newPasswordFocusNode,
                  hintText: 'Set new password',
                  prefixIcon: Icons.lock_outlined,
                  suffixIcon: Icons.visibility,
                ),
                const VerticalSpace(
                  space: 40,
                ),
                AuthTextField(
                  focusNode: confirmPasswordFocusNode,
                  hintText: 'confirm password',
                  prefixIcon: Icons.lock_outlined,
                  suffixIcon: Icons.visibility_off,
                ),
                const VerticalSpace(
                  space: 100,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SubmitElevatedButton(
                    textChild: 'Submit password',
                    onPressed: () {
                      showAppCustomBottomSheet(
                        context,
                        bottomSheetView: const PasswordRecoveryModalSheet(),
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

Future<dynamic> showAppCustomBottomSheet(
  BuildContext context, {
  required Widget bottomSheetView,
  double borderRadius = 40,
}) {
  return showModalBottomSheet(
    useSafeArea: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderRadius),
        topRight: Radius.circular(borderRadius),
      ),
    ),
    context: context,
    builder: (context) {
      return bottomSheetView;
    },
  );
}
