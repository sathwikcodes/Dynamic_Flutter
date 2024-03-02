import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';

import '../../controllers/onboarding_controller.dart';

class OnBBoardingScreen extends StatelessWidget {
  const OnBBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: TImages.onBoardingImage1, title: TTexts.onBoardingTitle1,subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(image: TImages.onBoardingImage2, title: TTexts.onBoardingTitle2,subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(image: TImages.onBoardingImage3, title: TTexts.onBoardingTitle3,subTitle: TTexts.onBoardingSubTitle3),

            ],
          ),
         const OnBoardingSkip(),

         const OnBoardingDotNavigation(),
          
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}








