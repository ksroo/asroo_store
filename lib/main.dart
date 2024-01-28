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
            apiKey: 'AIzaSyDzDbL3x8u-tFcR-5E3UTK06ZNPlTaWWII',
            appId: '1:123783791346:android:fd128a6da492bc142dc66b',
            messagingSenderId: '123783791346',
            projectId: 'asroostore',
          ),
        )
      : await Firebase.initializeApp();

  runApp(const AsrooStoreApp());
}
