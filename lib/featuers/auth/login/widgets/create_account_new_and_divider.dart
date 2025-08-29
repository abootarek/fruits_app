import 'package:flutter/material.dart';
import 'package:fruits/core/helper/navigation.dart';
import 'package:fruits/core/helper/spacing.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';

class CreateAccountNewAndDivider extends StatelessWidget {
  const CreateAccountNewAndDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'لا تمتلك حساب؟',
              style: TextStyles.font16Gray,
            ),
            TextButton(
              onPressed: () {
                context.pushNamed(Routers.registerScreen);
              },
              child: Text(
                'إنشاء حساب جديد',
                style: TextStyles.font16GreenSemiBold,
              ),
            ),
          ],
        ),
        verticalSpace(16.0),
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 0.5,
                color: ColorsApp.gray,
              ),
            ),
            horizontalSpace(14),
            Text(
              ' او ',
              style: TextStyles.font14Black,
            ),
            horizontalSpace(14),
            Expanded(
              child: Divider(
                thickness: 0.5,
                color: ColorsApp.gray,
              ),
            )
          ],
        ),
      ],
    );
  }
}
