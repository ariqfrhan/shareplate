import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shareplate/app/routes/app_pages.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: ListView(
          children: [
            Text("Let's Make Your Account",
                style: TextStyle(
                    color: ShareplateColor.primary,
                    fontSize: 32,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 15,
            ),
            Text(
              "You have a grateful journey waiting for you",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller.fullnameC,
              decoration: InputDecoration(
                labelText: 'Full Name',
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            IntlPhoneField(
              controller: controller.phoneC,
              decoration: InputDecoration(
                labelText: 'Phone',
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(horizontal: 20)
              ),
              initialCountryCode: 'ID',
              onChanged: (phone){
                print(phone.completeNumber);
              },
              showDropdownIcon: false,
              disableLengthCheck: true,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: controller.emailC,
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
              controller: controller.passwordC,
              decoration: InputDecoration(
                labelText: 'Password',
                fillColor: Colors.white,
                filled: true,
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller : controller.repasswordC,
              decoration: InputDecoration(
                labelText: 'Password Confirmation',
                fillColor: Colors.white,
                filled: true,
              ),
              obscureText: true,

            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
              children: <Widget>[
                Expanded(
                    child: Divider(
                  color: ShareplateColor.primary,
                  thickness: 2,
                )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'or',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Divider(
                  color: ShareplateColor.primary,
                  thickness: 2,
                ))
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
            TextButton(
              onPressed: () => Get.offAllNamed(Routes.LOGIN),
              child: Text('Already have an account?'),
            )
          ],
        ),
      ),
    );
  }
}
