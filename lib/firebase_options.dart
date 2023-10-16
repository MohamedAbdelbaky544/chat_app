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
    apiKey: 'AIzaSyB6tlWdtENfjNAw0ZBQd2XXMh5TTZ6SLOY',
    appId: '1:132480253089:web:30066388fd2fecb2e2c4e0',
    messagingSenderId: '132480253089',
    projectId: 'chat-app-d1c35',
    authDomain: 'chat-app-d1c35.firebaseapp.com',
    storageBucket: 'chat-app-d1c35.appspot.com',
    measurementId: 'G-9XP04JSVP9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNevncT23X1dldUROJepbSeijeIIiNhTg',
    appId: '1:132480253089:android:f3171970a5c537f5e2c4e0',
    messagingSenderId: '132480253089',
    projectId: 'chat-app-d1c35',
    storageBucket: 'chat-app-d1c35.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA5dc9iv2VAJG1qHmgOBBve6Z81ujzgi3U',
    appId: '1:132480253089:ios:ed3292d602a74bf1e2c4e0',
    messagingSenderId: '132480253089',
    projectId: 'chat-app-d1c35',
    storageBucket: 'chat-app-d1c35.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA5dc9iv2VAJG1qHmgOBBve6Z81ujzgi3U',
    appId: '1:132480253089:ios:c7c7973e9a74bb33e2c4e0',
    messagingSenderId: '132480253089',
    projectId: 'chat-app-d1c35',
    storageBucket: 'chat-app-d1c35.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}