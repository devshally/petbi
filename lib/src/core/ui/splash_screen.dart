import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';
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
          Image.asset(AppImages.splashImage, height: 150.h, width: 150.w),
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
    Future.delayed(const Duration(seconds: 5)).then(
      (value) => context.router.replace(
        const OnboardingRoute(),
      ),
    );
  }
}
