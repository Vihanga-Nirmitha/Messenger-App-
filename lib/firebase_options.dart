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
    apiKey: 'AIzaSyACUa_oERhtDlsMdBIGLTqKlteHM7kkp2I',
    appId: '1:78063583428:web:a7fe47210697ff38088991',
    messagingSenderId: '78063583428',
    projectId: 'wechat-a6c08',
    authDomain: 'wechat-a6c08.firebaseapp.com',
    storageBucket: 'wechat-a6c08.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqu1My7epREXKWgtfdDx_b1m3rkmgfUFM',
    appId: '1:78063583428:android:751f88e6b6e432ba088991',
    messagingSenderId: '78063583428',
    projectId: 'wechat-a6c08',
    storageBucket: 'wechat-a6c08.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA17bwJl27x4mncLD3lqow1954Mw14OWrM',
    appId: '1:78063583428:ios:cb2736f22079af0c088991',
    messagingSenderId: '78063583428',
    projectId: 'wechat-a6c08',
    storageBucket: 'wechat-a6c08.appspot.com',
    iosBundleId: 'com.example.wechat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA17bwJl27x4mncLD3lqow1954Mw14OWrM',
    appId: '1:78063583428:ios:cb2736f22079af0c088991',
    messagingSenderId: '78063583428',
    projectId: 'wechat-a6c08',
    storageBucket: 'wechat-a6c08.appspot.com',
    iosBundleId: 'com.example.wechat',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyACUa_oERhtDlsMdBIGLTqKlteHM7kkp2I',
    appId: '1:78063583428:web:584227418ffc5cad088991',
    messagingSenderId: '78063583428',
    projectId: 'wechat-a6c08',
    authDomain: 'wechat-a6c08.firebaseapp.com',
    storageBucket: 'wechat-a6c08.appspot.com',
  );
}
