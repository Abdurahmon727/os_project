import 'dart:io';

import "package:get_it/get_it.dart";
import 'package:hive/hive.dart';
import 'package:os_project/domain/repository.dart';
import 'package:os_project/domain/repository_impl.dart';
import 'package:os_project/src/auth/login/bloc/login_bloc.dart';
import 'package:os_project/src/auth/registrantion/bloc/registration_bloc.dart';
import 'package:os_project/src/client/home/bloc/client_home_bloc.dart';
import 'package:os_project/src/client/post_detail/bloc/post_detail_bloc.dart';
import 'package:os_project/src/owner/create_post/bloc/create_post_bloc.dart';
import 'package:os_project/src/owner/home/bloc/owner_home_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../core/local_source/local_source.dart';
import '../src/sys_admin/check_post/bloc/check_post_bloc.dart';
import '../src/sys_admin/home/bloc/sys_admin_home_bloc.dart';
import 'dio_client.dart';

final GetIt sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  /// External
  await _initHive();

  /// Dio
  sl.registerLazySingleton(
    () => DioClients.appBaseDio(),
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
  sl
    ..registerFactory(() => OwnerHomeBloc(sl()))
    ..registerFactory(() => CreatePostBloc(sl()));

  /// client
  sl
    ..registerFactory(() => ClientHomeBloc(sl()))
    ..registerFactory(() => PostDetailBloc(sl()));

  /// sys-admin
  sl
    ..registerFactory(() => SysAdminHomeBloc(sl()))
    ..registerFactory(() => CheckPostBloc(sl()));
}

Future<void> _initHive() async {
  const String boxName = "os_project_box";
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
