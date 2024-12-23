import 'package:os_project/core/either/either.dart';

import '../core/enums/profile_type.dart';
import '../core/error/failure.dart';
import '../data/auth/auth_response.dart';

abstract class Repository {
  Future<Either<Failure, AuthResponse>> login({
    required String email,
    required String password,
    required ProfileType profileType,
  });

  Future<Either<Failure, AuthResponse>> register({
    required String id,
    required String email,
    required String fullName,
    required String address,
    required String password,
    required ProfileType profileType,
  });
}
