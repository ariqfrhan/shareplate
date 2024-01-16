import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/community_controller.dart';

class CommunityView extends GetView<CommunityController> {
  const CommunityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shareplate', style: TextStyle(
          fontFamily: 'Amaranth',
          color: ShareplateColor.primary
        ),),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CommunityView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
