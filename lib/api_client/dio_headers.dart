import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioSingleton {
  static Dio? _instance;

  static Dio get instance {
    _instance ??= _createDio();
    return _instance!;
  }

  static Dio _createDio() {
    var dio = Dio()
      ..options.contentType = Headers.jsonContentType
      ..options.headers[Headers.acceptHeader] = 'application/json, text/plain, */*';

    return dio;
  }
}
