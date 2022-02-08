import 'dart:core';
import 'package:dio/dio.dart';

class HttpServices {
  // http dio client
  late Dio _dio;
  final baseUrl = "https://517f9e00-5f2f-4c63-b647-10e394a083eb.mock.pstmn.io/";
  HttpServices() {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      //connectTimeout: 5000,
      // receiveTimeout: 3000,
    ));
    intilizeInterceptors();
  }

  Future<Response> getRequest(String endPoint) async {
    Response response;
    try {
      response = await _dio.get(endPoint);
    } on DioError catch (e) {
      // ignore: avoid_print
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  intilizeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (DioError e, handler) {
        // ignore: avoid_print
        print(e.message);
        return handler.next(e);
      },
      onRequest: (options, handler) {
        // ignore: avoid_print
        print("${options.method} | ${options.path}");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        // ignore: avoid_print
        print(response.data);
        return handler.next(response);
      },
    ));
  }
}
