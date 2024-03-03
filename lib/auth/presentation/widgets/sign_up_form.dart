import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uni_tool/auth/presentation/widgets/create_account_elevated_button.dart';
import 'package:uni_tool/auth/presentation/widgets/sign_up_text_form_field.dart';
import 'package:uni_tool/core/common/widgets/horizontal_space.dart';
import 'package:uni_tool/core/common/widgets/vertical_space.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _enableBtn = false;
  void _submitForm() {
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formKey,
        onChanged: () => setState(() {
          _enableBtn = _formKey.currentState!.validate();
        }),
        child: Column(
          children: [
            const Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SignUpTextFormField(hintText: 'First Name'),
                  ),
                  HorizontalSpace(
                    space: 16,
                  ),
                  Expanded(
                    child: SignUpTextFormField(hintText: 'Last Name'),
                  ),
                ],
              ),
            ),
            const VerticalSpace(
              space: 20,
            ),
            const SignUpTextFormField(
              hintText: 'Email',
            ),
            const VerticalSpace(
              space: 20,
            ),
            const SignUpTextFormField(
              hintText: 'Password',
            ),
            const VerticalSpace(
              space: 20,
            ),
            const SignUpTextFormField(
              hintText: 'Confirm Password',
            ),
            const VerticalSpace(
              space: 20,
            ),
            const SignUpTextFormField(
              hintText: 'University',
            ),
            const VerticalSpace(
              space: 20,
            ),
            CreateAccountElevatedButton(
              onPressed: _enableBtn ? _submitForm : null,
            )
          ],
        ),
      ),
    );
  }
}
