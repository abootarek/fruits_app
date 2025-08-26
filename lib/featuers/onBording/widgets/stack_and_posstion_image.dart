// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fruits/core/helper/navigation.dart';
import 'package:fruits/featuers/onBording/data/model/model_onbording.dart';

import '../../../core/routing/routers.dart';

class StackAndPossitionImages extends StatelessWidget {
  StackAndPossitionImages({
    super.key,
    this.onboardingModel,
    this.index,
  });
  final OnboardingModel? onboardingModel;
  int? index = 0;

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      width: double.infinity,
      height: 490,
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              onboardingModel?.backgroundImage ?? 'll',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 195,
            left: 76,
            child: SvgPicture.asset(
              onboardingModel?.image ?? 'll',
              fit: BoxFit.cover,
            ),
          ),
          if (index == 0)
            Positioned(
              top: 15,
              right: 15,
              child: TextButton(
                onPressed: () {
                  // Handle skip action
                  context.pushNamed(Routers.homeScreen);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
