import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDmxbPHAkUPTS2OA-2dpl8wBmcd3-yta2A",
            authDomain: "repaso-28b2e.firebaseapp.com",
            projectId: "repaso-28b2e",
            storageBucket: "repaso-28b2e.appspot.com",
            messagingSenderId: "891041442287",
            appId: "1:891041442287:web:2494161d7cf5fe44446e1a",
            measurementId: "G-CDRQVF6FMJ"));
  } else {
    await Firebase.initializeApp();
  }
}
