import 'package:flutter/material.dart';
import 'package:fruits/core/helper/spacing.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';

import '../../../../core/widgets/text_form_field_app.dart';

class FormFiledEmailAndPasswordAndName extends StatefulWidget {
  const FormFiledEmailAndPasswordAndName({
    super.key,
  });

  @override
  State<FormFiledEmailAndPasswordAndName> createState() =>
      _FormFiledEmailAndPasswordAndNameState();
}

class _FormFiledEmailAndPasswordAndNameState
    extends State<FormFiledEmailAndPasswordAndName> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
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
            hintText: 'الاسم ثلاثي ',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء ادخال الاسم ثلاثي ';
              }
              return null;
            },
          ),
          verticalSpace(16.0),
          AppTextFormField(
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
              if (value == null || value.isEmpty) {
                return 'الرجاء ادخال البريد الالكتروني';
              }
              return null;
            },
          ),
          verticalSpace(16.0),
          AppTextFormField(
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
              if (value == null || value.isEmpty) {
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
