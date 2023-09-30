// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAuvaU8WwIInFdbHYXMtrSRNKMVPBdhudU',
    appId: '1:1005708533337:web:c2a8f96428387f24f75b48',
    messagingSenderId: '1005708533337',
    projectId: 'flutter-push-notificatio-90576',
    authDomain: 'flutter-push-notificatio-90576.firebaseapp.com',
    storageBucket: 'flutter-push-notificatio-90576.appspot.com',
    measurementId: 'G-V53LNPMDM7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0lwrGZ3WgXmYVGwNacAucs-4In7HZ0Ns',
    appId: '1:1005708533337:android:160bf006c02ea1eff75b48',
    messagingSenderId: '1005708533337',
    projectId: 'flutter-push-notificatio-90576',
    storageBucket: 'flutter-push-notificatio-90576.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAS6nLg1QqvRC40l1jbRykheDswzZpxjHY',
    appId: '1:1005708533337:ios:d09189a78984c22af75b48',
    messagingSenderId: '1005708533337',
    projectId: 'flutter-push-notificatio-90576',
    storageBucket: 'flutter-push-notificatio-90576.appspot.com',
    iosBundleId: 'com.example.flutterPushNotification',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAS6nLg1QqvRC40l1jbRykheDswzZpxjHY',
    appId: '1:1005708533337:ios:7f3e990182d9b3f9f75b48',
    messagingSenderId: '1005708533337',
    projectId: 'flutter-push-notificatio-90576',
    storageBucket: 'flutter-push-notificatio-90576.appspot.com',
    iosBundleId: 'com.example.flutterPushNotification.RunnerTests',
  );
}
