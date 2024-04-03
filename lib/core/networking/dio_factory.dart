import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  static Dio? dio;

  DioFactory._();

  static Dio getDio() {
    if (dio == null) {
      Duration timeout = const Duration(seconds: 20);
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: false,
      ),
    );
  }
}
