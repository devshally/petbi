import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:petbi/baseapp/utils/utils.dart';
import 'package:petbi/utilities/core/abstractions/build_config.dart';
import 'package:petbi/utilities/core/app_theme.dart';
import 'cubit_states.dart';

class MyApp extends StatelessWidget {
  final BuildConfig buildConfig;
  final GetIt instance;
  final GoRouter routes;

  const MyApp({
    Key? key,
    required this.buildConfig,
    required this.instance,
    required this.routes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: getProviders(instance),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) => child!,
          minTextAdapt: true,
          splitScreenMode: true,
          child: MaterialApp.router(
            routerDelegate: routes.routerDelegate,
            routeInformationParser: routes.routeInformationParser,
            routeInformationProvider: routes.routeInformationProvider,
            title: buildConfig.appName,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.themeData(context),
            themeMode: ThemeMode.light,
          ),
        ),
      ),
    );
  }
}


