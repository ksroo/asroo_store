import 'dart:io';

import 'package:asroo_store/asroo_store_app.dart';
import 'package:asroo_store/core/app/bloc_observer.dart';
import 'package:asroo_store/core/app/env.variables.dart';
import 'package:asroo_store/core/di/injection_container.dart';
import 'package:asroo_store/core/service/shared_pref/shared_pref.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

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

  await SharedPref().instantiatePreferences();

  await setupInjector();

  Bloc.observer = AppBlocObserver();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(const AsrooStoreApp());
  });
}
