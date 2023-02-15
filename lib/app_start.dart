import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:petbi/baseapp/resolver/app_resolver.dart';

import 'app_injection_component.dart';
import 'app_set_up.dart';
import 'my_app.dart';
import 'utilities/core/abstractions/build_config.dart';
import 'utilities/core/abstractions/feature_resolver.dart';
import 'utilities/core/abstractions/injection_module.dart';
import 'utilities/core/abstractions/router_module.dart';

GoRouter generateRoute(List<RouterModule> routerModule) {
  // itereate all router modueles and create go router object
  List<RouteBase> routeBase = [];
  for (var element in routerModule) {
    element.getRoutes().forEach((route) {
      routeBase.add(route);
    });
  }
  var routes = GoRouter(
    initialLocation: '/',
    routes: routeBase,
  );
  return routes;
}

abstract class AppStart {
  final BuildConfig buildConfig;

  final resolvers = <FeatureResolver>[
    AppResolver(),
  ];

  AppStart(this.buildConfig);

  Future<void> startApp() async {
    final routerModule = <RouterModule>[];
    final injectionModule = <InjectionModule>[];

    for (final resolver in resolvers) {
      // iterate resolvers into route and injection modules

      if (resolver.routerModule != null) {
        routerModule.add(resolver.routerModule!);
      }
      if (resolver.injectionModule != null) {
        injectionModule.add(resolver.injectionModule!);
      }
    }
    await AppSetUp().init();

    final injector = await AppInjectionComponent.instance
        .registerModules(modules: injectionModule, config: buildConfig);

    await AppSetUp().initStorage(injector.get());

    await runZonedGuarded<Future<void>>(() async {
      runApp(
        MyApp(
          buildConfig: buildConfig,
          instance: injector,
          routes: generateRoute(routerModule),
        ),
      );
    }, (onError, stackTrace) {});
  }
}
