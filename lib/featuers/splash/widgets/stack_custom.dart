import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackCustome extends StatelessWidget {
  const StackCustome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset('assets/images/header.png'),
          Positioned(
            top: 290.h,
            left: 100.w,
            child: Image.asset(
              'assets/images/icon.png',
            ),
          ),
          Positioned(
            bottom: 0.h,
            child: Image.asset(
              'assets/images/footer.png',
            ),
          ),
        ],
      ),
    );
  }
}
