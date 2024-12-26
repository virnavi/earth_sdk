// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:earth_sdk/data/apis/currency/currency_list_api.dart' as _i429;
import 'package:earth_sdk/data/apis/timeZones/time_zone_list_api.dart' as _i820;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i820.TimeZoneListApi>(() => _i820.TimeZoneListApi());
    gh.singleton<_i429.CurrencyListApi>(() => _i429.CurrencyListApi());
    return this;
  }
}
