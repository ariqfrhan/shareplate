import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shareplate', style: TextStyle(color: ShareplateColor.primary, fontFamily: 'Amaranth'),),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
