import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/routes/app_pages.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/payment_success_controller.dart';

class PaymentSuccessView extends GetView<PaymentSuccessController> {
  const PaymentSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 91,
                height: 91,
                decoration: BoxDecoration(
                  border: Border.all(width: 6, color: ShareplateColor.primary),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Icon(
                    Icons.done_rounded,
                    color: ShareplateColor.primary,
                    size: 64,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Payment Succesfull',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            Column(
              children: [
                Text('Toko Roti Emak - Malang', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                Text('Pick up your meal in', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.grey)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.timer_outlined), Text('20.00-21.00', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14))],
                )
              ],
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.MAIN_WRAPPER),
                child: Text('Continue',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: ShareplateColor.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.symmetric(vertical: 5)),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
