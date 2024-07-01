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
    apiKey: 'AIzaSyD_sD3Sv7qyzCi-G7t-9nw9_GrM4lZveLs',
    appId: '1:298277467140:web:35c7bccde7e46b5943b151',
    messagingSenderId: '298277467140',
    projectId: 'sampleapp-be2a8',
    authDomain: 'sampleapp-be2a8.firebaseapp.com',
    storageBucket: 'sampleapp-be2a8.appspot.com',
    measurementId: 'G-VQE29TTGY6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJqFeBRKYnXDymX9Dr8sQrzaW3a2CYpPc',
    appId: '1:298277467140:android:0ae807d67cd2fb5c43b151',
    messagingSenderId: '298277467140',
    projectId: 'sampleapp-be2a8',
    storageBucket: 'sampleapp-be2a8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-qABmckYdhlMUr8-44ufQkimVfrgB-sk',
    appId: '1:298277467140:ios:ee88668d6d06b24643b151',
    messagingSenderId: '298277467140',
    projectId: 'sampleapp-be2a8',
    storageBucket: 'sampleapp-be2a8.appspot.com',
    androidClientId: '298277467140-c1ihs5u3vtnjg5gqes4700glqp3dm16o.apps.googleusercontent.com',
    iosClientId: '298277467140-dq304opko6j8kv1b9t0co76nstselgh7.apps.googleusercontent.com',
    iosBundleId: 'com.example.helloWorld',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-qABmckYdhlMUr8-44ufQkimVfrgB-sk',
    appId: '1:298277467140:ios:ee88668d6d06b24643b151',
    messagingSenderId: '298277467140',
    projectId: 'sampleapp-be2a8',
    storageBucket: 'sampleapp-be2a8.appspot.com',
    androidClientId: '298277467140-c1ihs5u3vtnjg5gqes4700glqp3dm16o.apps.googleusercontent.com',
    iosClientId: '298277467140-dq304opko6j8kv1b9t0co76nstselgh7.apps.googleusercontent.com',
    iosBundleId: 'com.example.helloWorld',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD_sD3Sv7qyzCi-G7t-9nw9_GrM4lZveLs',
    appId: '1:298277467140:web:3be694677f46cffc43b151',
    messagingSenderId: '298277467140',
    projectId: 'sampleapp-be2a8',
    authDomain: 'sampleapp-be2a8.firebaseapp.com',
    storageBucket: 'sampleapp-be2a8.appspot.com',
    measurementId: 'G-VSP8JY24TD',
  );
}
