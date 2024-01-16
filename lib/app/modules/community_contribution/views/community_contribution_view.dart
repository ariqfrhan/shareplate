import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/community_contribution_controller.dart';

class CommunityContributionView
    extends GetView<CommunityContributionController> {
  const CommunityContributionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CommunityContributionView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CommunityContributionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
