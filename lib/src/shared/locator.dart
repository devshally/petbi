import 'package:get_it/get_it.dart';
import 'package:petbi/src/datasource/http/dio_http_config.dart';

final GetIt locator = GetIt.instance
  ..registerLazySingleton(() => DioHttpConfig());
