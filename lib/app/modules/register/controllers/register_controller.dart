import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late TextEditingController fullnameC;
  late TextEditingController phoneC;
  late TextEditingController emailC;
  late TextEditingController passwordC;
  late TextEditingController repasswordC;

  @override
  void onInit() {
    fullnameC = TextEditingController();
    phoneC = TextEditingController();
    emailC = TextEditingController();
    passwordC = TextEditingController();
    repasswordC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // fullnameC.dispose();
    // emailC.dispose();
    // phoneC.dispose();
    // emailC.dispose();
    // passwordC.dispose();
    // repasswordC.dispose();
    super.onClose();
  }
}
