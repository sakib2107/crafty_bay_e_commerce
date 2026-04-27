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
    apiKey: 'AIzaSyDbESidRYP0BdRziFTIOMTYMfAN2j1wMbg',
    appId: '1:325561491283:web:2b6255641979bb85c7cba6',
    messagingSenderId: '325561491283',
    projectId: 'e-com-ca158',
    authDomain: 'e-com-ca158.firebaseapp.com',
    storageBucket: 'e-com-ca158.firebasestorage.app',
    measurementId: 'G-PFCDME8FEW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDF-puVTf9HwdAwxJvib-j8_0Puil-BllU',
    appId: '1:325561491283:android:32d5dd72d72a3b04c7cba6',
    messagingSenderId: '325561491283',
    projectId: 'e-com-ca158',
    storageBucket: 'e-com-ca158.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUJqZf2gdCIAGE44Ez1CYkCyfme_psKu0',
    appId: '1:325561491283:ios:fc6d3838d5728683c7cba6',
    messagingSenderId: '325561491283',
    projectId: 'e-com-ca158',
    storageBucket: 'e-com-ca158.firebasestorage.app',
    iosBundleId: 'com.example.eCom',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBUJqZf2gdCIAGE44Ez1CYkCyfme_psKu0',
    appId: '1:325561491283:ios:fc6d3838d5728683c7cba6',
    messagingSenderId: '325561491283',
    projectId: 'e-com-ca158',
    storageBucket: 'e-com-ca158.firebasestorage.app',
    iosBundleId: 'com.example.eCom',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDbESidRYP0BdRziFTIOMTYMfAN2j1wMbg',
    appId: '1:325561491283:web:b4d036e7896c8bdcc7cba6',
    messagingSenderId: '325561491283',
    projectId: 'e-com-ca158',
    authDomain: 'e-com-ca158.firebaseapp.com',
    storageBucket: 'e-com-ca158.firebasestorage.app',
    measurementId: 'G-RS29XTQV9B',
  );
}
