import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:os_project/core/either/either.dart';
import 'package:os_project/core/error/failure.dart';
import 'package:os_project/core/local_source/local_source.dart';
import 'package:os_project/data/posts/post_model.dart';
import 'package:os_project/domain/repository.dart';
import 'package:os_project/assets/constants.dart';

import '../core/enums/profile_type.dart';
import '../core/enums/real_estate_type.dart';
import '../data/auth/profile_model.dart';

class RepositoryImpl implements Repository {
  final Dio _dio;
  final LocalSource _localSource;

  RepositoryImpl(this._dio, this._localSource);

  @override
  Future<Either<Failure, ProfileModel>> login({
    required String email,
    required String password,
    required ProfileType profileType,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/login',
        data: {
          'email': email,
          'password': password,
          'profileType': profileType.name,
        },
      );
      final data = ProfileModel.fromJson(response.data?['Data']);
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
  Future<Either<Failure, ProfileModel>> register({
    required String id,
    required String email,
    required String fullName,
    required String address,
    required String password,
    required ProfileType profileType,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
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
      final data = ProfileModel.fromJson(response.data ?? {});
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

  @override
  Future<Either<Failure, void>> createPost() async {
    try {
      await _dio.post<Map<String, dynamic>>(
        '/post',
        data: {
          "real_estate_type": "House",
          "service_type": "Rent",
          "user_id": _localSource.profile?.id,
          "title": "Spacious 3 Bedroom House for Rent",
          "description": "A beautiful and spacious house with a large garden and modern amenities.",
          "region": "Tashkent",
          "address": "5678 Oak Avenue, Metropolis, NY",
          "contact_details": "contact@realestate.com",
          "area": 2500,
          "number_of_rooms": 3,
          "floor_number": 1,
          "rent_price": 2000,
          "special_benefits": ["Swimming Pool", "Gym Access"]
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

  @override
  Future<Either<Failure, List<PostModel>>> getOwnerPosts() async {
    try {
      final response = await _dio.post(
        '/post/get-list',
        data: {'user_id': _localSource.profile?.id},
      );
      final List<PostModel> posts = [];
      response.data?['Data']['posts']?.forEach((e) {
        posts.add(PostModel.fromJson(e));
      });
      return Right(posts);
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

  @override
  Future<Either<Failure, List<PostModel>>> getClientPosts({
    required RealEstateType? realEstateType,
    required String? region,
  }) async {
    try {
      final response = await _dio.post(
        '/post/get-list',
        data: {
          'status': 'accepted',
          'real_estate_type': realEstateType?.name,
          'region': region,
        },
      );
      final List<PostModel> posts = [];
      response.data?['Data']['posts']?.forEach((e) {
        posts.add(PostModel.fromJson(e));
      });
      return Right(posts);
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

  @override
  Future<Either<Failure, List<PostModel>>> getSysAdminPosts() {
    // TODO: implement getSysAdminPosts
    throw UnimplementedError();
  }
}
