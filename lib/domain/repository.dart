import 'package:os_project/core/either/either.dart';
import 'package:os_project/core/enums/real_estate_type.dart';
import 'package:os_project/data/posts/post_model.dart';

import '../core/enums/profile_type.dart';
import '../core/error/failure.dart';
import '../data/auth/profile_model.dart';

abstract class Repository {
  Future<Either<Failure, ProfileModel>> login({
    required String email,
    required String password,
    required ProfileType profileType,
  });

  Future<Either<Failure, ProfileModel>> register({
    required String id,
    required String email,
    required String fullName,
    required String address,
    required String password,
    required ProfileType profileType,
  });

  Future<Either<Failure, void>> createPost();

  Future<Either<Failure, List<PostModel>>> getOwnerPosts();

  Future<Either<Failure, List<PostModel>>> getClientPosts({
    required RealEstateType? realEstateType,
    required String? region,
  });

  Future<Either<Failure, List<PostModel>>> getSysAdminPosts();

  Future<Either<Failure, void>> acceptPost({required String postId});
}
