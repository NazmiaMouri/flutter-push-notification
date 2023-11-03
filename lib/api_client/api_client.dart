

import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_push_notification/model/device_info.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://9c4c-103-154-160-116.ngrok-free.app/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

@PATCH('users/app-token')
  Future<void> sendDeviceInfo(@Body() DeviceInfo deviceInfo);
}
