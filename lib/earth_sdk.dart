import 'data/config/network_config.dart';
import 'domain/use_cases/base/base_use_case.dart';
import 'earth_sdk_get_it.dart';

class EarthSdk {
  static EarthSdk? _instance;

  static EarthSdk get shared {
    if (_instance == null) {
      throw Exception('Earth Sdk not initialized');
    }
    return _instance!;
  }

  static EarthSdk initialize({
    required NetworkConfig networkConfig,
  }) {
    if (_instance != null) {
      throw Exception('Earth Sdk already initialized');
    }
    _instance = EarthSdk._();
    _instance?.init(networkConfig: networkConfig);
    return _instance!;
  }

  EarthSdk._() {}

  Future<void> init({
    required NetworkConfig networkConfig,
  }) async {
    EarthSdkGetIt.initialize();
    EarthSdkGetIt.shared.registerSingleton<NetworkConfig>(networkConfig);
  }

  T get<T extends BaseUseCase>() => EarthSdkGetIt.shared.get();
}
