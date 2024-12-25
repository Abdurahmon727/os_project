import 'package:image_picker/image_picker.dart';
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
  });

  Future<Either<Failure, List<PostModel>>> getOwnerPosts();

  Future<Either<Failure, List<PostModel>>> getClientPosts({
    required RealEstateType? realEstateType,
    required String? region,
  });

  Future<Either<Failure, List<PostModel>>> getSysAdminPosts();

  Future<Either<Failure, void>> changePostStatus({required String postId, required String status});

  Future<Either<Failure, String>> uploadImage({required XFile file});
}
