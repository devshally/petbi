import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petbi/src/core/resources/constants/image_constants.dart';
import 'package:petbi/src/core/resources/widgets/my_button.dart';
import 'package:petbi/src/core/resources/widgets/size.dart';
import 'package:petbi/src/core/resources/widgets/text_view.dart';
import 'package:petbi/src/core/routing/app_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AppImages.onboardingImage1, height: 90.h),
              Image.asset(AppImages.onboardingImage2, height: 40.h),
              Image.asset(AppImages.onboardingImage3, height: 90.h),
            ],
          ),
          S.h(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.splashImage, height: 150.h),
              SizedBox(width: 35.w),
              Image.asset(AppImages.onboardingImage4, height: 40.h),
            ],
          ),
          S.h(16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppImages.onboardingImage5, height: 130.h),
              Image.asset(AppImages.onboardingImage6, height: 40.h),
              Image.asset(AppImages.onboardingImage7, height: 130.h),
            ],
          ),
          S.h(93.h),
          TextView(
            text: "Let's Get Started",
            fontSize: 32.sp,
            fontWeight: FontWeight.w600,
          ),
          S.h(18.h),
          TextView(
            text:
                "Lorem ipsum dolor sit amet consectetur.\nFermentum arcu nisl sit ac aliquam platea\ndignissim platea.",
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
          ),
          S.h(58.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: MyButton.fill(
              context: context,
              onPressed: () => context.router.push(const SignupRoute()),
              size: Size(MediaQuery.of(context).size.width, 52),
              text: 'Get Started',
            ),
          ),
        ],
      ),
    );
  }
}
