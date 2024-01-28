import 'dart:io';

import 'package:asroo_store/asroo_store_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

//  "current_key": "AIzaSyBDzognjD6pwp6oKKOoEkklgOunZo3W-fs" ==> apiKey
//  "mobilesdk_app_id": "1:255535904497:android:bf1c974c2689a199431b50" ==> appId
// "project_number": "255535904497" ==> messagingSenderId
// "project_id": "asroo-dev" ==> projectId
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyAF5kYQz5vlikrKs9qWzNOOLRM2HOA4520',
            appId: '1:872661960657:android:f53d61ba029764bfa9c2f0',
            messagingSenderId: '872661960657',
            projectId: 'asroo-store-84e92',
          ),
        )
      : await Firebase.initializeApp();

  runApp(const AsrooStoreApp());
}
