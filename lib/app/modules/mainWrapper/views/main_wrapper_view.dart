import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/modules/community/views/community_view.dart';
import 'package:shareplate/app/modules/home/views/home_view.dart';
import 'package:shareplate/app/modules/orders/views/orders_view.dart';
import 'package:shareplate/app/modules/profile/views/profile_view.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../controllers/main_wrapper_controller.dart';

class MainWrapperView extends GetView<MainWrapperController> {
  MainWrapperView({Key? key}) : super(key: key);
  final MainWrapperController controller = Get.put(MainWrapperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.animateToTab,
        physics: const BouncingScrollPhysics(),
        children: [
          HomeView(),
          CommunityView(),
          OrdersView(),
          ProfileView()
        ],
      ),
      bottomNavigationBar: Obx(
        ()=> BottomAppBar(
            elevation: 10,
            surfaceTintColor: Colors.white,
            shadowColor: Colors.grey,
            notchMargin: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bottomAppBarItem(context,
                      icon: Icons.home_outlined, page: 0, label: 'Home'),
                  _bottomAppBarItem(context,
                      icon: Icons.blur_circular_outlined, page: 1, label: 'Community'),
                  _bottomAppBarItem(context,
                      icon: Icons.assignment_outlined, page: 2, label: 'Orders'),
                  _bottomAppBarItem(context,
                      icon: Icons.person_outline, page: 3, label: 'Profile'),
                ],
              ),
            ),
          ),
      ),
    );
  }
  
  Widget _bottomAppBarItem(BuildContext context,
      {required IconData icon, required page, required String label}) {
    return ZoomTapAnimation(  
      onTap: ()=> controller.goToTab(page),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: controller.currentPage.value == page ? ShareplateColor.primary : ShareplateColor.grey30,
          ),
          Text(
            label,
            style: TextStyle(
              color: controller.currentPage.value == page ? ShareplateColor.primary : ShareplateColor.grey30,
              fontSize: 12,
              fontWeight: FontWeight.w600
            ),
            )
        ],
      ),
    );
  }
}
