import 'dart:core';
import 'package:dio/dio.dart';
import 'package:gst_in/model/user_model.dart';
import 'dart:convert';
import '../model/list_users.dart';

class HttpServices {
  // http dio client
  late Dio _dio;
  final baseUrl =
      "https://517f9e00-5f2f-4c63-b647-10e394a083eb.mock.pstmn.io/v2/demo";
  HttpServices() {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      //connectTimeout: 5000,
      // receiveTimeout: 3000,
    ));
    intilizeInterceptors();
  }

  Future<UserModel> search(String searchValue) async {
    Response response;
    var params = {
      "q": searchValue,
    };

    try {
      response = await _dio.get(baseUrl, queryParameters: params);
    } on DioError catch (e) {
      // ignore: avoid_print
      print(e.message);
      throw Exception(e.message);
    }
    return UserModel.fromJson(jsonDecode(response.data));
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
