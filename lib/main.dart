import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/utils/error_screen.dart';
import 'package:shareplate/app/utils/loading_screen.dart';
import 'package:shareplate/app/utils/splash_screen.dart';
import 'package:shareplate/firebase_options.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErrorScreen();
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return FutureBuilder(
              future: Future.delayed(Duration(seconds: 3)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Obx(
                    () => GetMaterialApp(
                      debugShowCheckedModeBanner: false,
                      title: 'SharePlate',
                      initialRoute: AppPages.INITIAL,
                      getPages: AppPages.routes,
                    ),
                  );
                }
                return SplashScreen();
              },
            );
          }

          return LoadingScreen();
        });
  }
}
