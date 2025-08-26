import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits/core/helper/spacing.dart';
import 'package:fruits/core/theming/style_app.dart';
import 'package:fruits/featuers/onBording/data/model/model_onbording.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({super.key, this.onboardingModel, this.index});
  final OnboardingModel? onboardingModel;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            Text(onboardingModel?.title ?? '',
                style: TextStyles.font22BlackBold),
            if (index == 0)
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: ' Fruit',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange, // لون مختلف لـ Fruit
                      ),
                    ),
                    TextSpan(
                      text: 'HUB',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green, // لون مختلف لـ HUB
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        verticalSpace(8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(onboardingModel?.description ?? '',
              textAlign: TextAlign.center, style: TextStyles.font14Gray),
        ),
      ],
    );
  }
}
