import 'package:petbi/baseapp/screens/splash_screen.dart';
import 'package:petbi/utilities/core/abstractions/router_module.dart';
import 'package:petbi/baseapp/utils/utils.dart';

class AppRouteModule implements RouterModule {
  @override
  List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: AppRoutes.indexSplash,
        name: AppRoutes.indexSplash,
        builder: (context, state) => const SplashScreen(),
      ),
    ];
  }
}

class AppRoutes {
  static const String indexSplash = '/';
}
