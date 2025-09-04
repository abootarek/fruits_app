import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/helper/spacing.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';
import 'package:fruits/core/widgets/button_app.dart';
import 'package:fruits/featuers/auth/register/logic/cubit/sign_up_cubit.dart';
import 'package:fruits/featuers/auth/register/ui/widgets/bloc_lisiner.dart';
import 'package:fruits/featuers/auth/register/ui/widgets/chek_box_and_condition.dart';
import 'package:fruits/featuers/auth/register/ui/widgets/form_field_name_and_email_and_pass.dart';
import 'package:fruits/featuers/auth/register/ui/widgets/have_account_already.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isChecked = false;

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
              CheckBoxAndCondition(
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              verticalSpace(30),
              AppTextButton(
                  buttonHeight: 60,
                  borderRadius: 16,
                  backgroundColor: ColorsApp.green,
                  buttonText: 'انشاء حساب جديد',
                  textStyle: TextStyles.font16WhiteBold,
                  onPressed: () {
                    if (isChecked) {
                      context.read<SignUpCubit>().signUp();
                    } else {
                      // Show an error message or handle the case when the checkbox is not checked
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: ColorsApp.red,
                          content: Text(
                            'يرجى الموافقة على الشروط والأحكام',
                            style: TextStyles.font16WhiteSemiBold,
                          ),
                        ),
                      );
                    }
                  }),
              verticalSpace(26),
              YouAlreadyHaveAnAccount(),
              SignUpBlocListener()
            ],
          ),
        ),
      ),
    );
  }
}
