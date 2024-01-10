import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shareplate/app/routes/app_pages.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Berinteraksi dengan Mudah",
            body:
                "Berinteraksi dengan sekitarmu hanya dengan 1 klik",
            image: Center(
              child: Image.asset("assets/image/logo.png"),
            ),
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(color: Colors.orange),
              bodyTextStyle:
                  TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
            ),
          )
        ],
        showSkipButton: true,
        skip: const Text('Skip', style: TextStyle(color: ShareplateColor.primary),),
        next: const Text("Next", style: TextStyle(color: ShareplateColor.primary),),
        done: const Text("Register", style: TextStyle(fontWeight: FontWeight.w700)),
        onDone: ()=> Get.offAllNamed(Routes.REGISTER),
        onSkip: () {
          // On Skip button pressed
        },
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
      )
    );
  }
}
