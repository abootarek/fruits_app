// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';

class LoginWithSocialMedia extends StatelessWidget {
  const LoginWithSocialMedia({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Login with $text');
        // TODO: Implement login with social media
      },
      child: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          border: Border.all(color: ColorsApp.gray),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          spacing: 40,
          children: [
            Spacer(),
            Text(
              text,
              style: TextStyles.font16BlackSemiBold,
            ),
            Icon(
              icon,
              size: 40.r,
            )
          ],
        ),
      ),
    );
  }
}
