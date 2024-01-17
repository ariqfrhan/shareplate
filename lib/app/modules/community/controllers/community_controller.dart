import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityController extends GetxController {
  late PageController pageController;

  RxInt currentPage = 0.obs;

  void goToTab(int page){
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void animateToTab(int page){
    currentPage.value = page;
    pageController.animateToPage(page, duration: Duration(milliseconds: 300), curve: Curves.easeOut);
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  void onClose(){
    pageController.dispose();
  }

}
