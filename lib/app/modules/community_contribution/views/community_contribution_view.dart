import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/community_contribution_controller.dart';

class CommunityContributionView
    extends GetView<CommunityContributionController> {
  const CommunityContributionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Text('My Contributions', style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
