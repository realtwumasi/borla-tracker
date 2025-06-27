import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD7GHykCnDA4zS-90VfAiICjMJ9goY8Rfs",
            authDomain: "borla-tracker.firebaseapp.com",
            projectId: "borla-tracker",
            storageBucket: "borla-tracker.firebasestorage.app",
            messagingSenderId: "809441537054",
            appId: "1:809441537054:web:e4c769857bfbc25188120f",
            measurementId: "G-DXHZ8R89YB"));
  } else {
    await Firebase.initializeApp();
  }
}
