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
    apiKey: 'AIzaSyAzP4s4q1uPgm7wEQWPZgXu8N81xIMJ66Y',
    appId: '1:369026676784:web:1bf2af5e3a8ae81b0c95f5',
    messagingSenderId: '369026676784',
    projectId: 'todoappflutter-c8fc3',
    authDomain: 'todoappflutter-c8fc3.firebaseapp.com',
    storageBucket: 'todoappflutter-c8fc3.appspot.com',
    measurementId: 'G-05LYWMWFDV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAc6OAT4SfnY7B51qkZKgXGs62aI0MTRt8',
    appId: '1:369026676784:android:ae03f6d4876e67de0c95f5',
    messagingSenderId: '369026676784',
    projectId: 'todoappflutter-c8fc3',
    storageBucket: 'todoappflutter-c8fc3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhACq3km9plVF26_NDqN3SsBV5JYHFFzc',
    appId: '1:369026676784:ios:8fa92b40ba1444320c95f5',
    messagingSenderId: '369026676784',
    projectId: 'todoappflutter-c8fc3',
    storageBucket: 'todoappflutter-c8fc3.appspot.com',
    iosClientId: '369026676784-q30qsruu4d9n2lcg8j5fjssco23gtvbn.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBhACq3km9plVF26_NDqN3SsBV5JYHFFzc',
    appId: '1:369026676784:ios:35d3ca1ae03aefee0c95f5',
    messagingSenderId: '369026676784',
    projectId: 'todoappflutter-c8fc3',
    storageBucket: 'todoappflutter-c8fc3.appspot.com',
    iosClientId: '369026676784-963q0sr391df7k31lr4s532muf7d4vtj.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp.RunnerTests',
  );
}
