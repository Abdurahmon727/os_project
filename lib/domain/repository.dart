import 'package:os_project/core/either/either.dart';
import 'package:os_project/core/helper.dart';

import '../core/error/failure.dart';

abstract class Repository {
  Either<Failure, void> login();

  Either<Failure, void> register();
}
