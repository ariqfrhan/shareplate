import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/community_post_controller.dart';

class CommunityPostView extends GetView<CommunityPostController> {
  const CommunityPostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CommunityPostView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CommunityPostView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
