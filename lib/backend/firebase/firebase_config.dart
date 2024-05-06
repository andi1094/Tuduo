import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAzCu2Jcr5GnEn5Czj6jPSnfeegCCdtCb0",
            authDomain: "toduoapp.firebaseapp.com",
            projectId: "toduoapp",
            storageBucket: "toduoapp.appspot.com",
            messagingSenderId: "800624677258",
            appId: "1:800624677258:web:00cebdba3f274973cf3873",
            measurementId: "G-95389FDFYH"));
  } else {
    await Firebase.initializeApp();
  }
}
