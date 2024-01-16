import 'package:get/get.dart';

import '../controllers/community_contribution_controller.dart';

class CommunityContributionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommunityContributionController>(
      () => CommunityContributionController(),
    );
  }
}
