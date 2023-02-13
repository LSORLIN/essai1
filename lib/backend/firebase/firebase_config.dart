import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBsKGboIcaS-J1pgJesuYOxBd5UsZB66v4",
            authDomain: "essais-divers-fflow.firebaseapp.com",
            projectId: "essais-divers-fflow",
            storageBucket: "essais-divers-fflow.appspot.com",
            messagingSenderId: "645681365475",
            appId: "1:645681365475:web:8baaed5dcc0280c09fe0d6"));
  } else {
    await Firebase.initializeApp();
  }
}
