import 'package:dio/dio.dart';
import 'package:os_project/assets/constants.dart';

abstract class DioClients {
  static Dio appBaseDio() {
    return Dio()
      ..options = BaseOptions(
        baseUrl: Constants.baseUrl,
        contentType: "application/json",
        sendTimeout: const Duration(seconds: 15),
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: <String, String>{},
      )
      ..interceptors.add(
        LogInterceptor(
          error: true,
          request: true,
          requestBody: true,
          responseBody: true,
          requestHeader: true,
          responseHeader: true,
          logPrint: (Object object) => print('dio: $object'),
        ),
      );
  }
}
