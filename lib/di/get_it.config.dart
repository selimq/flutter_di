// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../provider/user_provider.dart' as _i6;
import '../services/http-service.dart' as _i3;
import '../services/shared-pref-service.dart' as _i5;
import '../services/user-service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.HttpService>(() => _i3.HttpService());
  gh.factory<_i4.UserService>(() => _i4.UserService());
  gh.factory<_i5.SharedPrefService>(
      () => _i5.SharedPrefService(userService: get<_i4.UserService>()));
  gh.singleton<_i6.UserProvider>(_i6.UserProvider(
      userService: get<_i4.UserService>(),
      httpService: get<_i3.HttpService>()));
  return get;
}
