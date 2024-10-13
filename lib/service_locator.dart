import 'dart:io';

import 'package:dio/dio.dart';
import "package:get_it/get_it.dart";
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'core/local_source/local_source.dart';

final GetIt sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  /// External
  await _initHive();

  /// Dio
  sl.registerLazySingleton(
    () => Dio()
      ..options = BaseOptions(
        contentType: "application/json",
        sendTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: <String, String>{},
      )
      ..interceptors.add(
        LogInterceptor(
          error: true,
          request: true,
          requestBody: true,
          responseBody: true,
          requestHeader: true,
          responseHeader: true,
          logPrint: (Object object) => print("dio: $object"),
        ),
      ),
  );

  sl<Dio>().interceptors.addAll(
    <Interceptor>[],
  );

  /// Core
  sl.registerSingleton<LocalSource>(LocalSource(_box));

  /// features:
  /// home
  ///

  // sl
  //   ..registerLazySingleton<HomeRemoteDataSource>(
  //     () => HomeRemoteDataSourceImpl(sl()),
  //   )
  //   ..registerLazySingleton<HomeRepository>(
  //     () => HomeRepositoryImpl(sl(), sl()),
  //   )
  //   ..registerLazySingleton(() => HomeBloc(sl()))
  //   ..registerFactory(() => CitiesBloc(sl()));
}

Future<void> _initHive() async {
  const String boxName = "ffi_box";
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
