import 'package:common_sdk/common_sdk.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'earth_sdk_get_it.config.dart';
@InjectableInit(
  initializerName: 'init',
)
void configureGetItDependencies(GetIt getIt) => getIt.init();

class EarthSdkGetIt extends BaseGetIt {
  static EarthSdkGetIt? _instance;

  static bool get initialized => _instance != null;

  static EarthSdkGetIt get shared {
    if (_instance != null) return _instance!;
    throw Exception("EarthSdkGetIt not initialized");
  }

  static EarthSdkGetIt initialize() {
    if (!initialized) {
      _instance = EarthSdkGetIt._();
    }
    return _instance!;
  }

  EarthSdkGetIt._();

  @override
  void configureDependencies(GetIt getIt) {
    configureGetItDependencies(getIt);
  }

}
