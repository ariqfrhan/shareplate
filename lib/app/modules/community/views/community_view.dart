import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/modules/community_contribution/views/community_contribution_view.dart';
import 'package:shareplate/app/modules/community_post/views/community_post_view.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../controllers/community_controller.dart';

class CommunityView extends GetView<CommunityController> {
  CommunityView({Key? key}) : super(key: key);
  final CommunityController controller = Get.put(CommunityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        elevation: 10,
        surfaceTintColor: Colors.white,
        title: Column(
          children: [
            Text(
              'Shareplate',
              style: TextStyle(
                  fontFamily: 'Amaranth', color: ShareplateColor.primary),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _upperAppbarItem(context, page: 0, label: 'Community'),
                  _upperAppbarItem(context, page: 1, label: 'Contribution')
                ],
              ),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.animateToTab,
        children: [CommunityPostView(), CommunityContributionView()],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ShareplateColor.primary,
        onPressed: () {},
        child: Icon(
          Icons.add_rounded,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _upperAppbarItem(BuildContext context,
      {required page, required String label}) {
    return ZoomTapAnimation(
        onTap: () => controller.goToTab(page),
        child: Container(
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: controller.currentPage.value == page
                  ? ShareplateColor.primary
                  : ShareplateColor.grey,
              decoration: controller.currentPage.value == page
                  ? TextDecoration.underline
                  : TextDecoration.none,
              decorationColor: ShareplateColor.primary,
            ),
          ),
        ));
  }
}
