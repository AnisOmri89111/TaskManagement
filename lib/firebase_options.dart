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
    apiKey: 'AIzaSyCFEyy0wGJRP7TzCIHP9bWMCc7CC237vNI',
    appId: '1:959788403952:web:901ed6e85c8d433cf18635',
    messagingSenderId: '959788403952',
    projectId: 'fluttertodoapp-c3078',
    authDomain: 'fluttertodoapp-c3078.firebaseapp.com',
    storageBucket: 'fluttertodoapp-c3078.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqzI4BvD7d5m-qu-yZVm6RfYEsxD4upIU',
    appId: '1:959788403952:android:163170ece2d6740af18635',
    messagingSenderId: '959788403952',
    projectId: 'fluttertodoapp-c3078',
    storageBucket: 'fluttertodoapp-c3078.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4tsa-Pc8xnZiig74ZnR5XYKbHWzzgZ7Q',
    appId: '1:959788403952:ios:79a687a68b93a651f18635',
    messagingSenderId: '959788403952',
    projectId: 'fluttertodoapp-c3078',
    storageBucket: 'fluttertodoapp-c3078.appspot.com',
    iosBundleId: 'com.example.todoapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4tsa-Pc8xnZiig74ZnR5XYKbHWzzgZ7Q',
    appId: '1:959788403952:ios:b69357023bd1f2abf18635',
    messagingSenderId: '959788403952',
    projectId: 'fluttertodoapp-c3078',
    storageBucket: 'fluttertodoapp-c3078.appspot.com',
    iosBundleId: 'com.example.todoapp.RunnerTests',
  );
}
