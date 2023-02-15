import 'dart:async';
import 'package:petbi/baseapp/features/account/state/account_cubit.dart';
import 'package:petbi/utilities/api.dart';
import 'package:petbi/utilities/core/abstractions/build_config.dart';
import 'package:petbi/utilities/core/abstractions/injection_module.dart';
import 'package:petbi/utilities/storage.dart';
import 'package:get_it/get_it.dart';

class AppInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDepenencies({
    required GetIt injector,
    required BuildConfig buildConfig,
  }) {
    injector.registerLazySingleton<Storage>(() => StorageImpl());

    injector.registerLazySingleton(() => Api(buildConfig: buildConfig));

    ///Cubit registration
    injector.registerFactory(
      () => AccountCubit(),
    );
    // injector.registerFactory(
    //   () => BottomNavCubit(),
    // );

    ///Repository registration
    // injector.registerLazySingleton<AccountRepo>(
    //   () => AccountRepoImpl(injector.get()),
    // );

    ///Service registration
    // injector.registerLazySingleton<AccountApi>(
    //   () => AccountApiImpl(injector.get(), injector.get()),
    // );
  }
}
