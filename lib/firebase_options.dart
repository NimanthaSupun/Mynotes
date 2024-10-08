// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBBNE8e-3jrJO18Tg-uiapBCsw4KyZ_ILQ',
    appId: '1:499925857055:web:2cbfd4ccb137771e02f62a',
    messagingSenderId: '499925857055',
    projectId: 'something-new-flutter',
    authDomain: 'something-new-flutter.firebaseapp.com',
    storageBucket: 'something-new-flutter.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMD_A1Isg8-IsRoloP7fdsSq6E6UWy1UQ',
    appId: '1:499925857055:android:84528abc0bb4fdf002f62a',
    messagingSenderId: '499925857055',
    projectId: 'something-new-flutter',
    storageBucket: 'something-new-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVlSs6PT9CZkS_lhiARXy-JMBd9aKsw6U',
    appId: '1:499925857055:ios:c8601863de48b9a502f62a',
    messagingSenderId: '499925857055',
    projectId: 'something-new-flutter',
    storageBucket: 'something-new-flutter.appspot.com',
    iosBundleId: 'com.example.newFlutter1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCVlSs6PT9CZkS_lhiARXy-JMBd9aKsw6U',
    appId: '1:499925857055:ios:c8601863de48b9a502f62a',
    messagingSenderId: '499925857055',
    projectId: 'something-new-flutter',
    storageBucket: 'something-new-flutter.appspot.com',
    iosBundleId: 'com.example.newFlutter1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBBNE8e-3jrJO18Tg-uiapBCsw4KyZ_ILQ',
    appId: '1:499925857055:web:2e056b2a1208e6a902f62a',
    messagingSenderId: '499925857055',
    projectId: 'something-new-flutter',
    authDomain: 'something-new-flutter.firebaseapp.com',
    storageBucket: 'something-new-flutter.appspot.com',
  );

}