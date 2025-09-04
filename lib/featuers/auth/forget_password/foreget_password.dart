import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';
import 'package:fruits/core/widgets/button_app.dart';
import 'package:fruits/featuers/auth/forget_password/widgets/form_fiel_forget_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.backGroundWhite,
        centerTitle: true,
        title: Text('نسيت كلمة المرور؟', style: TextStyles.font19BlackBold),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: Column(
          spacing: 30,
          textDirection: TextDirection.rtl,
          children: [
            Text('لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
                textDirection: TextDirection.rtl, style: TextStyles.font16Gray),
            FormFieldForgetPassword(),
            AppTextButton(
              buttonHeight: 60.h,
              borderRadius: 16.r,
              onPressed: () {
                // context.read<ForgetPasswordCubit>().sendCode();
              },
              buttonText: 'إرسال رمز التحقق',
              textStyle: TextStyles.font16WhiteBold,
            ),
          ],
        ),
      ),
    );
  }
}
