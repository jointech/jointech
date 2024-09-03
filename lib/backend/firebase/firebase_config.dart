import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBePmcOE_mdviGws0Fj4TdoC2m6GsX1B9g",
            authDomain: "tecnico-salfa-nmvnes.firebaseapp.com",
            projectId: "tecnico-salfa-nmvnes",
            storageBucket: "tecnico-salfa-nmvnes.appspot.com",
            messagingSenderId: "381106510605",
            appId: "1:381106510605:web:f2b87764e89d0ac818ee44"));
  } else {
    await Firebase.initializeApp();
  }
}
