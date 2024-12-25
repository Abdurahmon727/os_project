import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
  Future<Either<Failure, void>> createPost({
    required String realEstateType,
    required String serviceType,
    required String title,
    required String description,
    required String region,
    required String address,
    required String contactDetails,
    required int area,
    required int numberOfRooms,
    required int floorNumber,
    required List<String> images,
    required int price,
    required int rentPrice,
    required List<String> specialBenefits,
  }) async {
    try {
      await _dio.post<Map<String, dynamic>>(
        '/post',
        data: {
          "real_estate_type": realEstateType,
          "service_type": serviceType,
          "user_id": _localSource.profile?.id,
          "title": title,
          "description": description,
          "region": region,
          "address": address,
          "contact_details": contactDetails,
          'images': images,
          "area": area,
          "number_of_rooms": numberOfRooms,
          "floor_number": floorNumber,
          "price": price,
          "rent_price": rentPrice,
          "special_benefits": specialBenefits,
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
  Future<Either<Failure, List<PostModel>>> getSysAdminPosts() async {
    try {
      final response = await _dio.post(
        '/post/get-list',
        data: {
          'status': 'pending',
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
  Future<Either<Failure, void>> acceptPost({
    required String postId,
    required String status,
  }) async {
    try {
      await _dio.put(
        '/post/status/$postId',
        data: {'status': status},
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
  Future<Either<Failure, String>> uploadImage({required XFile file}) async {
    try {
      final data = FormData.fromMap({
        "image": await MultipartFile.fromFile(
          file.path,
          contentType: DioMediaType('image', 'octet-stream'),
        ),
      });

      final response = await _dio.post('/upload', data: data);

      return Right(response.data['Data']['url'] as String);
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
