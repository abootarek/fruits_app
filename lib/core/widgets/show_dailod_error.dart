import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits/core/helper/spacing.dart';
import 'package:lottie/lottie.dart';

Future<void> showDialogError(BuildContext context, String message) {
  return showDialog(
    context: context,
    builder: (_) => AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            'assets/lottie/error.json',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          verticalSpace(16),
          Text(
            message,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
