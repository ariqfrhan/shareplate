import 'package:get/get.dart';

import '../controllers/main_wrapper_controller.dart';

class MainWrapperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainWrapperController>(
      () => MainWrapperController(),
    );
  }
}
