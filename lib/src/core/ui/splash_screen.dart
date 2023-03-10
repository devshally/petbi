import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petbi/src/core/resources/constants/image_constants.dart';
import 'package:petbi/src/core/routing/app_router.dart';
import 'package:petbi/src/core/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.light().primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(AppImages.splashImage),
          SizedBox(height: 4.h),
          Text.rich(
            TextSpan(
              text: 'Pet',
              style: TextStyle(
                color: AppColors.light().background,
                fontSize: 56.sp,
                fontWeight: FontWeight.w700,
              ),
              children: [
                TextSpan(
                  text: 'Bi',
                  style: TextStyle(
                    color: const Color(0xffFCCFDF),
                    fontSize: 56.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    handleRouting();
  }

  handleRouting() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => context.router.push(
        const OnboardingRoute(),
      ),
    );
  }
}
