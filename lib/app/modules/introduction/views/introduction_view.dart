import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/routes/app_pages.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/logoNoTitle.png"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Let's create a community committed to sustainability",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Discover surplus meals, share, and make a difference",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                    onPressed: ()=>Get.offNamed(Routes.REGISTER),
                    child: Text('Get Started Now'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ShareplateColor.primary,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          ShareplateColor.primary
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                          0.0,
                          
                          1
                        ],
                      )
                    ),
                  ),
                  Image.asset("assets/images/food.png", fit: BoxFit.fill,)
                ],
              ),
            )
          ],
        ));
  }
}
