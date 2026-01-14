// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8lrRuqa9dz9mgawQzZN09Krdceipu6aY',
    appId: '1:172638230724:android:2b2b1a8c88f1d3c0129191',
    messagingSenderId: '172638230724',
    projectId: 'fir-cli-d4bbd',
    storageBucket: 'fir-cli-d4bbd.firebasestorage.app',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB8lrRuqa9dz9mgawQzZN09Krdceipu6aY',
    appId: '1:172638230724:web:375b6ffa62567573129191',
    messagingSenderId: '172638230724',
    projectId: 'fir-cli-d4bbd',
    authDomain: 'fir-cli-d4bbd.firebaseapp.com',
    storageBucket: 'fir-cli-d4bbd.firebasestorage.app',
    measurementId: 'G-FR9C7HGLDY',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGFNfY7HyUz1NHiL18QMwZBUgruPbODro',
    appId: '1:172638230724:ios:f313c34f8973568b129191',
    messagingSenderId: '172638230724',
    projectId: 'fir-cli-d4bbd',
    storageBucket: 'fir-cli-d4bbd.firebasestorage.app',
    iosBundleId: 'com.example.testApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGFNfY7HyUz1NHiL18QMwZBUgruPbODro',
    appId: '1:172638230724:ios:f313c34f8973568b129191',
    messagingSenderId: '172638230724',
    projectId: 'fir-cli-d4bbd',
    storageBucket: 'fir-cli-d4bbd.firebasestorage.app',
    iosBundleId: 'com.example.testApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB8lrRuqa9dz9mgawQzZN09Krdceipu6aY',
    appId: '1:172638230724:web:47210ffc5dad4cf4129191',
    messagingSenderId: '172638230724',
    projectId: 'fir-cli-d4bbd',
    authDomain: 'fir-cli-d4bbd.firebaseapp.com',
    storageBucket: 'fir-cli-d4bbd.firebasestorage.app',
    measurementId: 'G-08WEQYLDP6',
  );
}