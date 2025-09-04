import 'package:flutter/material.dart';
import 'package:fruits/core/helper/navigation.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/core/theming/style_app.dart';

class YouAlreadyHaveAnAccount extends StatelessWidget {
  const YouAlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ' تمتلك حساب بالفعل؟',
          style: TextStyles.font16Gray,
        ),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routers.loginScreen);
          },
          child: Text(
            'تسجيل الدخول',
            style: TextStyles.font16GreenSemiBold,
          ),
        ),
      ],
    );
  }
}
