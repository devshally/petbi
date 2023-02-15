import 'package:petbi/utilities/core/abstractions/feature_resolver.dart';
import 'package:petbi/utilities/core/abstractions/injection_module.dart';
import 'package:petbi/utilities/core/abstractions/router_module.dart';

import '../router/app_router.dart';
import 'app_injection_module.dart';

class AppResolver implements FeatureResolver {
  @override
  InjectionModule? get injectionModule => AppInjectionModule();

  @override
  RouterModule? get routerModule => AppRouteModule();
}
