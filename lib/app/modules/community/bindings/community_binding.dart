import 'package:get/get.dart';

import '../controllers/community_controller.dart';

class CommunityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommunityController>(
      () => CommunityController(),
    );
  }
}
