import 'package:flutter/material.dart';
import 'package:fruits/core/helper/spacing.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';
import 'package:fruits/core/widgets/button_app.dart';
import 'package:fruits/featuers/auth/register/widgets/chek_box_and_condition.dart';
import 'package:fruits/featuers/auth/register/widgets/form_field_name_and_email_and_pass.dart';
import 'package:fruits/featuers/auth/register/widgets/have_account_already.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.backGroundWhite,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text(
          'حساب جديد',
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
              FormFiledEmailAndPasswordAndName(),
              verticalSpace(16),
              CheckBoxAndCondition(),
              verticalSpace(30),
              AppTextButton(
                buttonHeight: 60,
                borderRadius: 16,
                backgroundColor: ColorsApp.green,
                buttonText: 'انشاء حساب جديد',
                textStyle: TextStyles.font16WhiteBold,
              ),
              verticalSpace(26),
              YouAlreadyHaveAnAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
