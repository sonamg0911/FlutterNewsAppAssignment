// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/services/api_services.dart' as _i3;
import '../domain/repository/i_news_repo.dart' as _i4;
import '../domain/repository/mock_news_repo.dart' as _i6;
import '../domain/repository/news_repo.dart' as _i5;
import '../domain/usecase/news_list_usecase.dart' as _i7;

const String _DEVELOPMENT = 'DEVELOPMENT';
const String _PRODUCTION = 'PRODUCTION';
const String _TESTING = 'TESTING';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.ApiServices>(_i3.ApiServices());
  gh.factory<_i4.INewsRepo>(
    () => _i5.NewsRepo(),
    registerFor: {
      _DEVELOPMENT,
      _PRODUCTION,
    },
  );
  gh.factory<_i4.INewsRepo>(
    () => _i6.MockNewsRepo(),
    registerFor: {_TESTING},
  );
  gh.factory<_i7.NewsListUseCase>(
    () => _i7.NewsListUseCase(get<_i4.INewsRepo>()),
    registerFor: {
      _DEVELOPMENT,
      _PRODUCTION,
      _TESTING,
    },
  );
  return get;
}
