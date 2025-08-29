import 'package:flutter/material.dart';
import 'package:fruits/core/cached/constants.dart';
import 'package:fruits/core/cached/sharedprefrance_singltone.dart';
import 'package:fruits/core/helper/navigation.dart';
import 'package:fruits/core/helper/spacing.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';
import 'package:fruits/core/widgets/button_app.dart';
import 'package:fruits/featuers/onBording/data/model/model_onbording.dart';
import 'package:fruits/featuers/onBording/widgets/page_view_custom.dart';
import 'package:fruits/featuers/onBording/widgets/smoth_indecator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  final List<OnboardingModel> onboardingData = [
    OnboardingModel(
      image: 'assets/svg/image1.svg',
      title: 'مرحبًا بك في',
      description:
          'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
      backgroundImage: 'assets/svg/Vector.svg',
    ),
    OnboardingModel(
      image: 'assets/svg/image2.svg',
      title: 'ابحث وتسوق',
      description:
          'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية.',
      backgroundImage: 'assets/svg/stack2.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageViewCustom(
              onboardingData: onboardingData,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
            SmothIndicatorCustom(
              controller: _pageController,
              count: onboardingData.length,
            ),
            verticalSpace(24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: double.infinity,
                child: AppTextButton(
                  borderRadius: 16,
                  backgroundColor: ColorsApp.green,
                  onPressed: () {
                    SharedPreferenceSingleton.instance
                        .setBool(isOnboardingSeen, true);
                    if (currentPage == onboardingData.length - 1) {
                      context.pushNamed(Routers.loginScreen);
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear,
                      );
                    }
                  },
                  buttonText: currentPage == onboardingData.length - 1
                      ? "ابدأ الآن"
                      : "التالي",
                  textStyle: TextStyles.font16WhiteSemiBold,
                ),
              ),
            ),
            verticalSpace(22),
          ],
        ),
      ),
    );
  }
}
