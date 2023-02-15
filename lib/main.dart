import 'package:flutter/foundation.dart';

import 'app_start.dart';
import 'utilities/core/abstractions/build_config.dart';

void main() {
  if (kReleaseMode) {
    ProductionApp().startApp();
  } else {
    StagingApp().startApp();
  }
}

class ProductionApp extends AppStart {
  ProductionApp()
      : super(ProductionBuildConfig(
          baseUrl: 'https://development.petbi.com/api/devshally',
          appName: "Petbi",
        ));
}

class ProductionBuildConfig extends BuildConfig {
  ProductionBuildConfig({required String baseUrl, required String appName})
      : super(
          baseUrl: baseUrl,
          appName: appName,
        );
}

class StagingApp extends AppStart {
  StagingApp()
      : super(StagingBuildConfig(
          baseUrl: 'https://development.petbi.com/api/devshally',
          appName: "Petbi Staging",
        ));
}

class StagingBuildConfig extends BuildConfig {
  StagingBuildConfig({required String baseUrl, required String appName})
      : super(
          baseUrl: baseUrl,
          appName: appName,
        );
}
