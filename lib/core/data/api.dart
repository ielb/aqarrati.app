import 'dart:io';

import 'package:dio/dio.dart';

class Api {
  Api._();
  static final _api = Api._();
  factory Api() {
    return _api;
  }

  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'http://127.0.0.1:3030',
    headers: {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: 'application/json',
    },
  ));
  Future<Response<T>> httpGet<T>(String path,
      {Map<String, dynamic>? headers}) async {
    return _dio.request(
      path,
      options: Options(method: 'GET', headers: headers),
    );
  }

  Future<Response<T>> httpPost<T>(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) async {
    print(_dio.options.baseUrl);
    return await _dio.request(
      path,
      data: body,
      options: Options(method: 'POST', headers: headers),
    );
  }

  Future<Response> httpPut(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) async {
    return await _dio.put(
      path,
      data: body,
      options: Options(method: 'PUT', headers: headers),
    );
  }

  Future<Response> httpDelete(String path,
      {Map<String, dynamic>? headers}) async {
    return await _dio.delete(
      path,
      options: Options(method: 'DELETE', headers: headers),
    );
  }

  Future<Response> httpPatch(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) async {
    return await _dio.patch(
      path,
      data: body,
      options: Options(method: 'PATCH', headers: headers),
    );
  }

  Future<Response> httpHead(String path,
      {Map<String, dynamic>? headers}) async {
    return await _dio.head(
      path,
      options: Options(method: 'HEAD', headers: headers),
    );
  }

  Future<Response> postWithFile(String path, File file,
      {Map<String, dynamic>? headers}) async {
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path, filename: fileName),
    });
    return await _dio.request(path,
        data: formData, options: Options(method: 'POST', headers: headers));
  }
}
