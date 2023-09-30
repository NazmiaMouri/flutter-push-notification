import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  FirebaseMessaging message = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotification = FlutterLocalNotificationsPlugin();

  void requestNotificationPermission() async {
    NotificationSettings settings = await message.requestPermission(
        alert: true,
        announcement: true,
        carPlay: true,
        criticalAlert: true,
        badge: true,
        sound: true,
        provisional: true);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('android');
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print('IOS');
    } else {
      AppSettings.openAppSettings();
    }
  }

  void initLocalNotification(BuildContext context, RemoteMessage message) async {
    var androidInitialization = const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosInitialization = const DarwinInitializationSettings();

    var initializationSetting = InitializationSettings(android: androidInitialization, iOS: iosInitialization);

    await _localNotification.initialize(initializationSetting,
        onDidReceiveNotificationResponse: (payload) => handleNotification(message));
  }

  void firebaseInit(BuildContext context) {
    FirebaseMessaging.onMessage.listen((message) {
      if (Platform.isAndroid) {
        initLocalNotification(context, message);
        showNotification(message);
      } else {
        showNotification(message);
      }
    });
  }

  Future<void> showNotification(RemoteMessage message) async {
    AndroidNotificationChannel channel = AndroidNotificationChannel(
        Random.secure().nextInt(10000).toString(), 'High Importance Channel',
        importance: Importance.max);

    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        channel.id.toString(), channel.name.toString(),
        importance: Importance.high, priority: Priority.high, ticker: 'ticker');

    DarwinNotificationDetails iosNotificationDetails =
        const DarwinNotificationDetails(presentAlert: true, presentBadge: true, presentSound: true);

    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails, iOS: iosNotificationDetails);

    Future.delayed(Duration.zero,
        () => _localNotification.show(0, message.notification?.title, message.notification?.body, notificationDetails));
  }

  Future<String?> getDeviceToken() async {
    print(jsonEncode(await message.getToken()));
    return await message.getToken();
  }

  void handleNotification(RemoteMessage message){

    if(message.data['type'] == 'msg'){

    }

  }
}
