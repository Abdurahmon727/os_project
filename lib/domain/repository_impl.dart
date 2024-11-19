import 'package:dio/dio.dart';
import 'package:os_project/domain/repository.dart';

class RepositoryImpl implements Repository {
  final Dio _dio;
  RepositoryImpl(this._dio);
}
