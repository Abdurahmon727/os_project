import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:os_project/core/either/either.dart';
import 'package:os_project/core/error/failure.dart';
import 'package:os_project/core/local_source/local_source.dart';
import 'package:os_project/domain/repository.dart';
import 'package:os_project/assets/constants.dart';

import '../core/enums/profile_type.dart';
import '../data/auth/auth_response.dart';

class RepositoryImpl implements Repository {
  final Dio _dio;
  final LocalSource _localSource;

  RepositoryImpl(this._dio, this._localSource);

  @override
  Future<Either<Failure, AuthResponse>> login({
    required String email,
    required String password,
    required ProfileType profileType,
  }) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {
          'email': email,
          'password': password,
          'profileType': profileType.name,
        },
      );
      final data = AuthResponse.fromJson(response.data['Data']);
      if ((data.id ?? '').isEmpty) {
        return const Left(ServerFailure(message: 'User not found', statusCode: 404));
      }
      await _localSource.setProfile(data);
      return Right(data);
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
  Future<Either<Failure, AuthResponse>> register({
    required String id,
    required String email,
    required String fullName,
    required String address,
    required String password,
    required ProfileType profileType,
  }) async {
    try {
      final response = await _dio.post(
        '/register',
        data: {
          'id': id,
          'email': email,
          'fullname': fullName,
          'address': address,
          'password': password,
          'type': profileType.name
        },
      );
      final data = AuthResponse.fromJson(response.data);
      return Right(data);
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
