import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:petbi/src/bottom%20navigation/bottom_navigation.dart';
import 'package:petbi/src/core/ui/onboarding_screen.dart';
import 'package:petbi/src/core/ui/splash_screen.dart';
import 'package:petbi/src/features/user/ui/email_verification.dart';
import 'package:petbi/src/features/user/ui/find_account.dart';
import 'package:petbi/src/features/user/ui/forgot_password.dart';
import 'package:petbi/src/features/user/ui/login.dart';
import 'package:petbi/src/features/user/ui/reset_password.dart';
import 'package:petbi/src/features/user/ui/signup.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    // General routes.
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: OnboardingScreen),

    // Authentication routes.
    AutoRoute(page: SignupScreen),
    AutoRoute(page: LoginScreen),
    AutoRoute(page: ForgotPasswordScreen),
    AutoRoute(page: ResetPasswordScreen),
    AutoRoute(page: FindAccountScreen),
    AutoRoute(page: EmailVerificationScreen),

    // Bottom navigation.
    AutoRoute(page: BottomNavigationScreen),
  ],
)
class AppRouter extends _$AppRouter {}
