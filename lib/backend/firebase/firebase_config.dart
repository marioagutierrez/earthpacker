import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAk9RM9lLVeonjY1sc4gM2dzCKar3Nhr1U",
            authDomain: "earthpacker-50a05.firebaseapp.com",
            projectId: "earthpacker-50a05",
            storageBucket: "earthpacker-50a05.firebasestorage.app",
            messagingSenderId: "54192436643",
            appId: "1:54192436643:web:52c95c8ae250253eb89616",
            measurementId: "G-LRH4L6JMV9"));
  } else {
    await Firebase.initializeApp();
  }
}
