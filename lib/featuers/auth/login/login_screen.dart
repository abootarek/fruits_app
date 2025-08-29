import 'package:flutter/material.dart';
import 'package:fruits/core/helper/spacing.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';
import 'package:fruits/core/widgets/button_app.dart';
import 'package:fruits/featuers/auth/login/widgets/create_account_new_and_divider.dart';
import 'package:fruits/featuers/auth/login/widgets/form_filed_email_and_password.dart';
import 'package:fruits/featuers/auth/login/widgets/login_with_social_media_custom.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: ColorsApp.backGroundWhite,
        centerTitle: true,
        title: Text(
          'تسجيل الدخول',
          style: TextStyles.font19BlackBold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormFiledEmailAndPassword(),
              verticalSpace(33.0),
              AppTextButton(
                buttonHeight: 60,
                borderRadius: 16,
                backgroundColor: ColorsApp.green,
                buttonText: 'تسجيل الدخول',
                textStyle: TextStyles.font16WhiteBold,
              ),
              verticalSpace(16.0),
              CreateAccountNewAndDivider(),
              verticalSpace(16.0),
              LoginWithSocialMedia(
                text: 'تسجيل الدخول بواسطه جوجل',
                icon: Icons.g_mobiledata,
              ),
              verticalSpace(16.0),
              LoginWithSocialMedia(
                text: 'تسجيل الدخول بواسطه ابل ',
                icon: Icons.apple,
              ),
              verticalSpace(16.0),
              LoginWithSocialMedia(
                text: 'تسجيل الدخول بواسطه فيسبوك',
                icon: Icons.facebook,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
