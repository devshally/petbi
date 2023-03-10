import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              SvgPicture.asset(AppImages.onboardingImage1),
              SvgPicture.asset(AppImages.onboardingImage2),
              SvgPicture.asset(AppImages.onboardingImage3),
            ],
          ),
          S.h(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImages.splashImage),
              SizedBox(width: 35.w),
              SvgPicture.asset(AppImages.onboardingImage4),
            ],
          ),
          S.h(16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppImages.onboardingImage5),
              SvgPicture.asset(AppImages.onboardingImage6),
              SvgPicture.asset(AppImages.onboardingImage7),
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
