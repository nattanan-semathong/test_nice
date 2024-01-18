import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/core/shared/contants.dart';

@module
abstract class NetworkModule {
  Connectivity get connectivity => Connectivity();
  Constant get constant => Constant();

  Dio get dio => Dio(BaseOptions(baseUrl: constant.apiBaseUrl))
    ..interceptors.add(LogInterceptor());

  @Named('apiKey')
  String get apiKey => constant.apiKey;
}
