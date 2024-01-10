import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/routes/app_pages.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Let's Sign You In",
                      style: TextStyle(
                          color: ShareplateColor.primary,
                          fontSize: 32,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome back, You have been missed",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text('Forgot your password?'))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () => Get.offAllNamed(Routes.HOME),
                    child: const Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ShareplateColor.primary,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget> [
                      Expanded(child: Divider(color: ShareplateColor.primary, thickness: 2,)),
                      SizedBox(width: 10,),
                      Text('or', style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(width: 10,),
                      Expanded(child: Divider(color: ShareplateColor.primary, thickness: 2,))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "http://pngimg.com/uploads/google/google_PNG19635.png",
                          fit: BoxFit.cover,
                          width: 36,
                        ),
                        Text(
                          'Register with Google',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () => Get.toNamed(Routes.REGISTER),
                  child: Text('Register Now'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}