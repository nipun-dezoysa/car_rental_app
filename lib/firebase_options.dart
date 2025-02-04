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
    apiKey: 'AIzaSyDfN_hcXSUsN8O7h0NVux9SrFQ4EDfAbBw',
    appId: '1:648342228489:web:436aeba591ab3dfc6672d8',
    messagingSenderId: '648342228489',
    projectId: 'car-rental-app-590b4',
    authDomain: 'car-rental-app-590b4.firebaseapp.com',
    storageBucket: 'car-rental-app-590b4.firebasestorage.app',
    measurementId: 'G-CVRT6NCG2H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxL-AtZcKybs2W_8E2xVdx5ykSRjAQmRc',
    appId: '1:648342228489:android:d9325be28686b20c6672d8',
    messagingSenderId: '648342228489',
    projectId: 'car-rental-app-590b4',
    storageBucket: 'car-rental-app-590b4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABVaPu64KenlQNCET92nGV5j0AKecYkEU',
    appId: '1:648342228489:ios:59b8801f6f87957f6672d8',
    messagingSenderId: '648342228489',
    projectId: 'car-rental-app-590b4',
    storageBucket: 'car-rental-app-590b4.firebasestorage.app',
    iosBundleId: 'com.example.carRentalApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyABVaPu64KenlQNCET92nGV5j0AKecYkEU',
    appId: '1:648342228489:ios:59b8801f6f87957f6672d8',
    messagingSenderId: '648342228489',
    projectId: 'car-rental-app-590b4',
    storageBucket: 'car-rental-app-590b4.firebasestorage.app',
    iosBundleId: 'com.example.carRentalApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDfN_hcXSUsN8O7h0NVux9SrFQ4EDfAbBw',
    appId: '1:648342228489:web:4eb9e55bdd8c35366672d8',
    messagingSenderId: '648342228489',
    projectId: 'car-rental-app-590b4',
    authDomain: 'car-rental-app-590b4.firebaseapp.com',
    storageBucket: 'car-rental-app-590b4.firebasestorage.app',
    measurementId: 'G-63R5T1V3HB',
  );
}
