import 'package:flutter/material.dart';
import 'package:fruits/core/helper/spacing.dart';
import 'package:fruits/featuers/onBording/data/model/model_onbording.dart';
import 'package:fruits/featuers/onBording/widgets/stack_and_posstion_image.dart';
import 'package:fruits/featuers/onBording/widgets/title_and_decrption.dart';

class PageViewCustom extends StatefulWidget {
  const PageViewCustom({
    super.key,
    required this.onboardingData,
    required this.controller,
    required this.onPageChanged,
  });

  final List<OnboardingModel> onboardingData;
  final PageController controller;
  final Function(int) onPageChanged;

  @override
  State<PageViewCustom> createState() => _PageViewCustomState();
}

class _PageViewCustomState extends State<PageViewCustom> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: widget.controller,
        itemCount: widget.onboardingData.length,
        onPageChanged: widget.onPageChanged,
        itemBuilder: (context, index) {
          final model = widget.onboardingData[index];
          return Column(
            children: [
              StackAndPossitionImages(
                onboardingModel: model,
                index: index,
              ),
              verticalSpace(24),
              TitleAndDescription(
                onboardingModel: model,
                index: index,
              ),
            ],
          );
        },
      ),
    );
  }
}
