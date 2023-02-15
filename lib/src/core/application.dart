import 'package:flutter/material.dart';
import 'package:petbi/src/core/i18n/l10n.dart';
import 'package:petbi/src/core/routing/app_router.dart';
import 'package:petbi/src/core/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final AppRouter _appRouter = AppRouter();

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'PetBi',
      routerDelegate: _appRouter.delegate(),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        I18n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
      ],
    );
  }
}
