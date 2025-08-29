import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/font_wight.dart';

const double horizontalPadding = 16.0;
const double verticalPadding = 25.0;
const double verticalSpaceAfterTitle = 96.0;
const double verticalSpaceAfterForm = 48.0;
const double buttonBorderRadius = 5.0;
const double buttonHeight = 56.0;

class TextStyles {
  static final TextStyle font14Gray = TextStyle(
    fontSize: 14.sp,
    color: ColorsApp.gray,
  );
  static final TextStyle font16Gray = TextStyle(
    fontSize: 16.sp,
    color: ColorsApp.gray,
    fontWeight: FontWeightHelper.semiBold,
  );

  static final TextStyle font14Black = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsApp.black,
  );

  static final TextStyle font14Red = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsApp.red,
  );

  static final TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsApp.whiteColor,
  );
  static final TextStyle font16WhiteBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsApp.whiteColor,
  );

  static final TextStyle font22BlackBold = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsApp.black,
  );

  static final TextStyle font19BlackBold = TextStyle(
    fontSize: 19.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsApp.black,
  );
  static final TextStyle font16BlackSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsApp.black,
  );
  static final TextStyle font13GreenSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsApp.green,
  );
  static final TextStyle font16GreenSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsApp.green,
  );
}
