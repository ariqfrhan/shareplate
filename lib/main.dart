import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/controllers/auth_controller.dart';
import 'package:shareplate/app/utils/error_screen.dart';
import 'package:shareplate/app/utils/loading_screen.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';
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
  final authC = Get.put(AuthController(), permanent: true);
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErrorScreen();
          }

          // return GetMaterialApp(
          //   theme: ThemeData(
          //     colorScheme: ColorScheme.fromSeed(
          //         seedColor: ShareplateColor.primary,
          //         brightness: Brightness.light),
          //     inputDecorationTheme: InputDecorationTheme(
          //         enabledBorder: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(8),
          //             borderSide:
          //                 BorderSide(color: Color(0xFFA7AEBE), width: 0.4)),
          //         focusedBorder: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(8),
          //             borderSide: BorderSide(
          //                 color: ShareplateColor.primary, width: 0.4)),
          //         contentPadding: EdgeInsets.symmetric(horizontal: 20)),
          //     textTheme:
          //         Theme.of(context).textTheme.apply(fontFamily: 'Montserrat'),
          //     primaryColor: ShareplateColor.primary,
          //   ),
          //   debugShowCheckedModeBanner: false,
          //   title: 'Shareplate',
          //   initialRoute: authC.isLogin.isTrue ? Routes.HOME : Routes.INTRODUCTION,
          //   getPages: AppPages.routes,
          // );

          if (snapshot.connectionState == ConnectionState.done) {
            return FutureBuilder(
                future: Future.delayed(Duration(seconds: 3)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Obx(() => GetMaterialApp(
                          theme: ThemeData(
                            colorScheme: ColorScheme.fromSeed(
                                seedColor: ShareplateColor.primary,
                                brightness: Brightness.light),
                            inputDecorationTheme: InputDecorationTheme(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Color(0xFFA7AEBE), width: 0.4)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: ShareplateColor.primary,
                                        width: 0.4)),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20)),
                            textTheme: Theme.of(context)
                                .textTheme
                                .apply(fontFamily: 'Montserrat'),
                            primaryColor: ShareplateColor.primary,
                          ),
                          debugShowCheckedModeBanner: false,
                          title: 'Shareplate',
                          initialRoute: authC.isLogin.isTrue
                              ? Routes.HOME
                              : Routes.REGISTER,
                          getPages: AppPages.routes,
                        )
                        );
                  }
                  return SplashScreen();
                });
          }

          return LoadingScreen();
        });
  }
}
