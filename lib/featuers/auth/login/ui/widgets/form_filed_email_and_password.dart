import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/helper/app_regx.dart';
import 'package:fruits/core/helper/spacing.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';
import 'package:fruits/core/widgets/text_form_field_app.dart';
import 'package:fruits/featuers/auth/login/cubit/login_cubit.dart';

class FormFiledEmailAndPassword extends StatefulWidget {
  const FormFiledEmailAndPassword({
    super.key,
  });

  @override
  State<FormFiledEmailAndPassword> createState() =>
      _FormFiledEmailAndPasswordState();
}

class _FormFiledEmailAndPasswordState extends State<FormFiledEmailAndPassword> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignInCubit>().formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<SignInCubit>().emailController,
            inputTextStyle: TextStyles.font16BlackSemiBold,
            textAlign: TextAlign.right,
            keyboardType: TextInputType.emailAddress,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1.0),
              borderSide: const BorderSide(color: ColorsApp.lightGray),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1.0),
              borderSide: const BorderSide(color: ColorsApp.green),
            ),
            backgroundColor: ColorsApp.mistyGrey,
            hintText: 'البريد الالكتروني',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'الرجاء ادخال البريد الالكتروني';
              }
              return null;
            },
          ),
          verticalSpace(16.0),
          AppTextFormField(
            controller: context.read<SignInCubit>().passwordController,
            inputTextStyle: TextStyles.font16BlackSemiBold,
            keyboardType: TextInputType.visiblePassword,
            textAlign: TextAlign.right,
            isObscureText: isObscureText,
            prefixIcon: IconButton(
              icon: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1.0),
              borderSide: const BorderSide(color: ColorsApp.lightGray),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1.0),
              borderSide: const BorderSide(color: ColorsApp.green),
            ),
            backgroundColor: ColorsApp.mistyGrey,
            hintText: 'كلمة المرور',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'الرجاء ادخال كلمة المرور';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
