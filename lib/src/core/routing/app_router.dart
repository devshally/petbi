import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:petbi/src/core/ui/splash_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
