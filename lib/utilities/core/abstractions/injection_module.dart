import 'dart:async';

import 'package:get_it/get_it.dart';

import 'build_config.dart';

abstract class InjectionModule {
  FutureOr<void> registerDepenencies({
    required GetIt injector,
    required BuildConfig buildConfig,
  });
}
