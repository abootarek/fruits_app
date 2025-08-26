import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmothIndicatorCustom extends StatelessWidget {
  const SmothIndicatorCustom({
    super.key,
    required this.controller,
    required this.count,
  });

  final PageController controller;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      effect: WormEffect(
        dotHeight: 12,
        dotWidth: 12,
        activeDotColor: Colors.green,
      ),
    );
  }
}
