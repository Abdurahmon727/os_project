import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:os_project/core/either/either.dart';
import 'package:os_project/core/error/failure.dart';
import 'package:os_project/core/local_source/local_source.dart';
import 'package:os_project/domain/repository.dart';
import 'package:os_project/assets/constants.dart';

import '../core/enums/profile_type.dart';

class RepositoryImpl implements Repository {
  final Dio _dio;
  final LocalSource _localSource;

  RepositoryImpl(this._dio, this._localSource);

  @override
  Future<Either<Failure, void>> login({
    required String email,
    required String password,
    required ProfileType profileType,
  }) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
          'profileType': profileType.name,
        },
      );
      return const Right(null);
    } on DioException catch (error, stacktrace) {
      debugPrint('Dio Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerFailure(
        message: error.message ?? Constants.defaultErrorMessage,
        statusCode: error.response?.statusCode,
      ));
    } on Exception catch (error, stacktrace) {
      debugPrint('Exception occurred: $error stacktrace: $stacktrace');
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> register({
    required String id,
    required String email,
    required String fullName,
    required String address,
    required String password,
    required ProfileType profileType,
  }) async {
    try {
      final response = await _dio.post(
        '/auth/register',
        data: {
          'id': id,
          'email': email,
          'fullName': fullName,
          'address': address,
          'password': password,
          'profileType': profileType.name
        },
      );
      return const Right(null);
    } on DioException catch (error, stacktrace) {
      debugPrint('Dio Exception occurred: $error stacktrace: $stacktrace');
      return Left(
        ServerFailure(
          message: error.message ?? Constants.defaultErrorMessage,
          statusCode: error.response?.statusCode,
        ),
      );
    } on Exception catch (error, stacktrace) {
      debugPrint('Exception occurred: $error stacktrace: $stacktrace');
      return const Left(UnknownFailure());
    }
  }
}
