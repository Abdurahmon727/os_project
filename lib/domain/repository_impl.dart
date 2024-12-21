import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:os_project/core/either/either.dart';
import 'package:os_project/core/error/failure.dart';
import 'package:os_project/domain/repository.dart';
import 'package:os_project/assets/constants.dart';

class RepositoryImpl implements Repository {
  final Dio _dio;

  RepositoryImpl(this._dio);

  @override
  Either<Failure, void> login() {
    try {
      final response = _dio.post('/auth/login');
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
  Either<Failure, void> register() {
    try {
      final response = _dio.post('/auth/register');
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
