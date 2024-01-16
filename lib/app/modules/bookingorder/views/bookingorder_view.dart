import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/bookingorder_controller.dart';

class BookingorderView extends GetView<BookingorderController> {
  const BookingorderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Booking Order',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BookingorderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Order',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: ShareplateColor.primary,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.symmetric(vertical: 5)),
      )),
    );
  }
}
