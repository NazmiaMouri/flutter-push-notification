import 'package:flutter/material.dart';
import 'package:flutter_push_notification/NotificationService.dart';
import 'package:flutter_push_notification/api_client/api_repository.dart';
import 'package:flutter_push_notification/model/device_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  NotificationServices services = NotificationServices();

  @override
  void initState() {
    // TODO: implement initState

    services.requestNotificationPermission();
    services.firebaseInit(context);
    services.getDeviceToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: InkWell(
            onTap: () async{
              String? token = await services.getDeviceToken();

              DeviceInfo deviceInfo = DeviceInfo(2, token);
              apiRepo.sendToken(deviceInfo);
            },
            child: Text('send token')),
      ),
    );
  }
}
