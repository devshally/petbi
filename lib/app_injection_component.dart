import 'package:get_it/get_it.dart';

import 'constant.dart';
import 'utilities/core/abstractions/build_config.dart';
import 'utilities/core/abstractions/injection_module.dart';

class AppInjectionComponent {
  static AppInjectionComponent instance = AppInjectionComponent._();
  AppInjectionComponent._();

  Future<GetIt> registerModules({
    required List<InjectionModule> modules,
    required BuildConfig config,
  }) async {
    for (final mod in modules) {
      await mod.registerDepenencies(injector: injector, buildConfig: config);
    }
    return injector;
  }
}
