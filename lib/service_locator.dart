import 'dart:io';

import 'package:dio/dio.dart';
import "package:get_it/get_it.dart";
import 'package:hive/hive.dart';
import 'package:os_project/domain/repository.dart';
import 'package:os_project/domain/repository_impl.dart';
import 'package:os_project/features/auth/login/bloc/login_bloc.dart';
import 'package:os_project/features/auth/registrantion/bloc/registration_bloc.dart';
import 'package:os_project/features/auth/registrantion/registration_page.dart';
import 'package:os_project/features/client/home/bloc/client_home_bloc.dart';
import 'package:os_project/features/client/post_detail/bloc/post_detail_bloc.dart';
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

  /// Core
  sl.registerSingleton<LocalSource>(LocalSource(_box));
  sl.registerLazySingleton<Repository>(
    () => RepositoryImpl(sl()),
  );

  /// auth
  sl
    ..registerFactory(() => RegistrationBloc(sl()))
    ..registerFactory(() => LoginBloc(sl()));

  /// owner
  // sl
  //   ..registerFactory(() => OwnerHomeBloc(sl()))
  //   ..registerFactory(() => CreatePostBloc(sl()));
  /// client
  sl
    ..registerFactory(() => ClientHomeBloc(sl()))
    ..registerFactory(() => PostDetailBloc(sl()));

  /// sys-admin
  // sl
  //   ..registerFactory(() => SysAdminHomeBloc(sl()))
  //   ..registerFactory(() => CheckPostBloc(sl()));
}

Future<void> _initHive() async {
  const String boxName = "ffi_box";
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
