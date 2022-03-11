import 'dart:async';

import 'package:appwrite_project/app.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'utils/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded<Future<void>>(
    () async {
      await initServices();
      runApp(
        const App(),
      );
    },
    (Object error, StackTrace stack) {
      debugPrint('ErrorAboutMovieApp: $error, $stack');
    },
  );
}

// //--Init dependencies
// Future<void> initialDependencies() async {
//   await AppWrite().init();
// }

Future<void> initServices() async {
  ConnectivityUtil.configureConnectivityStream();

  debugPrint('Starting GetX Services...');
  await Future.wait(
    <Future<dynamic>>[
      GetStorage.init(),
      Get.putAsync(() => GlobalVariablesService().init()),
    ],
  );
  debugPrint('All GetX Services Started...');
}
