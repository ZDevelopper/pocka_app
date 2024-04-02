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
    apiKey: 'AIzaSyA_QPAVifLMrEwPimFXcpUzG_zS0f3gRrE',
    appId: '1:979940993593:web:76032acddefa108edb3be8',
    messagingSenderId: '979940993593',
    projectId: 'pocka-8b0e9',
    authDomain: 'pocka-8b0e9.firebaseapp.com',
    storageBucket: 'pocka-8b0e9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYddBOivt5LtmjQWxxm0une8TyJhN3wDE',
    appId: '1:979940993593:android:3464d24f013d9c0edb3be8',
    messagingSenderId: '979940993593',
    projectId: 'pocka-8b0e9',
    storageBucket: 'pocka-8b0e9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYgX3eUP0P1Fsubhf2W3RHckpaiIxTWko',
    appId: '1:979940993593:ios:f696a957d6faaa7fdb3be8',
    messagingSenderId: '979940993593',
    projectId: 'pocka-8b0e9',
    storageBucket: 'pocka-8b0e9.appspot.com',
    iosBundleId: 'com.example.pockaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDYgX3eUP0P1Fsubhf2W3RHckpaiIxTWko',
    appId: '1:979940993593:ios:58be78c546df3f60db3be8',
    messagingSenderId: '979940993593',
    projectId: 'pocka-8b0e9',
    storageBucket: 'pocka-8b0e9.appspot.com',
    iosBundleId: 'com.example.pockaApp.RunnerTests',
  );
}