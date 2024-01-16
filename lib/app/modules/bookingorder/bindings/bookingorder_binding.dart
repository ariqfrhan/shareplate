import 'package:get/get.dart';

import '../controllers/bookingorder_controller.dart';

class BookingorderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookingorderController>(
      () => BookingorderController(),
    );
  }
}
