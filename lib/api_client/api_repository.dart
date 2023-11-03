import 'package:flutter_push_notification/api_client/api_client.dart';
import 'package:flutter_push_notification/api_client/dio_headers.dart';
import 'package:flutter_push_notification/model/device_info.dart';

class ApiRepository {
  late ApiClient _apiRequest;

  ApiRepository() {
    _apiRequest = ApiClient(DioSingleton.instance);
  }

  Future<void> sendToken(DeviceInfo deviceInfo) {
    return _apiRequest.sendDeviceInfo(deviceInfo);
  }
}

final apiRepo = ApiRepository();
