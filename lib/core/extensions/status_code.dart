import 'package:dio/dio.dart';

extension StatusCode<T> on Response<T> {
  bool get isSuccessful =>
      (statusCode ?? 0) >= 200 && (statusCode ?? 0) < 300;

  bool get isUnAuthorized => (statusCode ?? 0) == 401;
}
