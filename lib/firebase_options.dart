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
    apiKey: 'AIzaSyDEvM1WXjmu2QyLY8pwHKnYoFOqpxdFr4Q',
    appId: '1:79098854149:web:9c1608344385426fbb556c',
    messagingSenderId: '79098854149',
    projectId: 'urasshsns',
    authDomain: 'urasshsns.firebaseapp.com',
    storageBucket: 'urasshsns.appspot.com',
    measurementId: 'G-W93RWW6S16',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC2HesGCZANl3JjRH_KD2hjyUk7BENSDgA',
    appId: '1:79098854149:android:e34e37ae4637f52fbb556c',
    messagingSenderId: '79098854149',
    projectId: 'urasshsns',
    storageBucket: 'urasshsns.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBU1IEEUK417QEEgskq-I84Nw_xMRXu-6U',
    appId: '1:79098854149:ios:2bbb21712212eb40bb556c',
    messagingSenderId: '79098854149',
    projectId: 'urasshsns',
    storageBucket: 'urasshsns.appspot.com',
    iosBundleId: 'com.example.urasshSns',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBU1IEEUK417QEEgskq-I84Nw_xMRXu-6U',
    appId: '1:79098854149:ios:52737a56da409dafbb556c',
    messagingSenderId: '79098854149',
    projectId: 'urasshsns',
    storageBucket: 'urasshsns.appspot.com',
    iosBundleId: 'com.example.urasshSns.RunnerTests',
  );
}
