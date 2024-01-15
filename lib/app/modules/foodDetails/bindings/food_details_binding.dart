import 'package:get/get.dart';

import '../controllers/food_details_controller.dart';

class FoodDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodDetailsController>(
      () => FoodDetailsController(),
    );
  }
}
