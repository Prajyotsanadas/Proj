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
    apiKey: 'AIzaSyD6oG86pPj9CcMZLYQS0R28anGnSMq40mo',
    appId: '1:432289508427:web:a64346530ccd7c2bb9b1ce',
    messagingSenderId: '432289508427',
    projectId: 'lab1-b2d03',
    authDomain: 'lab1-b2d03.firebaseapp.com',
    storageBucket: 'lab1-b2d03.appspot.com',
    measurementId: 'G-PJ3414FTC8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAiYvEKvEpggxkRn6cq0uDBlAbONhYRTsc',
    appId: '1:432289508427:android:cb691021d76116b6b9b1ce',
    messagingSenderId: '432289508427',
    projectId: 'lab1-b2d03',
    storageBucket: 'lab1-b2d03.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnkW_PUUGFZiefh7SfnJTzvxSkuyTn4qQ',
    appId: '1:432289508427:ios:a16fdfb12eed2c1fb9b1ce',
    messagingSenderId: '432289508427',
    projectId: 'lab1-b2d03',
    storageBucket: 'lab1-b2d03.appspot.com',
    iosBundleId: 'com.pcps.trashTrack',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDnkW_PUUGFZiefh7SfnJTzvxSkuyTn4qQ',
    appId: '1:432289508427:ios:909730c379ad3c97b9b1ce',
    messagingSenderId: '432289508427',
    projectId: 'lab1-b2d03',
    storageBucket: 'lab1-b2d03.appspot.com',
    iosBundleId: 'com.pcps.trashTrack.RunnerTests',
  );
}