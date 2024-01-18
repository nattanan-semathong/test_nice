// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/di/network_module.dart' as _i12;
import 'core/shared/contants.dart' as _i4;
import 'features/news/data/mapper/news_mapper.dart' as _i6;
import 'features/news/data/repository/news_repository_impl.dart' as _i9;
import 'features/news/data/service/news_service.dart' as _i7;
import 'features/news/domain/repository/news_repository.dart' as _i8;
import 'features/news/domain/usecase/get_recent_news_usecase.dart' as _i10;
import 'features/news/presentation/bloc/main_news_bloc/main_news_bloc.dart'
    as _i11;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  gh.factory<_i3.Connectivity>(() => networkModule.connectivity);
  gh.factory<_i4.Constant>(() => networkModule.constant);
  gh.factory<_i5.Dio>(() => networkModule.dio);
  gh.factory<_i6.NewsMapper>(() => _i6.NewsMapper());
  gh.singleton<_i7.NewsService>(_i7.NewsService(gh<_i5.Dio>()));
  gh.factory<String>(
    () => networkModule.apiKey,
    instanceName: 'apiKey',
  );
  gh.singleton<_i8.NewsRepository>(_i9.NewsRepositoryImpl(
    gh<_i7.NewsService>(),
    gh<String>(instanceName: 'apiKey'),
    gh<_i6.NewsMapper>(),
  ));
  gh.factory<_i10.GetRecentNewsUseCase>(
      () => _i10.GetRecentNewsUseCaseImpl(gh<_i8.NewsRepository>()));
  gh.factory<_i11.MainNewsBloc>(
      () => _i11.MainNewsBloc(gh<_i10.GetRecentNewsUseCase>()));
  return getIt;
}

class _$NetworkModule extends _i12.NetworkModule {}
