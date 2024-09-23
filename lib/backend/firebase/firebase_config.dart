import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB2jA_s7z89xfIpudTVTkBhyuTBqeuzqZY",
            authDomain: "fairway-exchange.firebaseapp.com",
            projectId: "fairway-exchange",
            storageBucket: "fairway-exchange.appspot.com",
            messagingSenderId: "915321381233",
            appId: "1:915321381233:web:704487fc185c261244d6d0",
            measurementId: "G-0S0VWF6HBD"));
  } else {
    await Firebase.initializeApp();
  }
}
