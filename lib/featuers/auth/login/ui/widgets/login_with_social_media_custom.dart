// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';
import 'package:fruits/featuers/auth/login/cubit/login_cubit.dart';

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
        context.read<SignInCubit>().signInWithGoogle();
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
              size: 55.r,
            ),
          ],
        ),
      ),
    );
  }
}
