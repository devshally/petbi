import 'package:flutter/material.dart';
import 'package:petbi/src/core/theme/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7286D3),
      body: Center(
        child: Text.rich(
          TextSpan(
            text: 'Pet',
            style: TextStyle(
              color: AppColors.light().background,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
            children: const [
              TextSpan(
                text: 'Bi',
                style: TextStyle(
                  color: Color(0xffE8D2A6),
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
