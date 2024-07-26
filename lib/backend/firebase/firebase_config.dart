import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBxMEn7mo3RiMNv4Y1oikf-JkSJOV3ihmo",
            authDomain: "travel-app-b2802.firebaseapp.com",
            projectId: "travel-app-b2802",
            storageBucket: "travel-app-b2802.appspot.com",
            messagingSenderId: "1004370479545",
            appId: "1:1004370479545:web:5d9be7c03afb21d625ce68"));
  } else {
    await Firebase.initializeApp();
  }
}
