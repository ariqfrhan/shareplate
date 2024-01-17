import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/community_post_controller.dart';

class CommunityPostView extends GetView<CommunityPostController> {
  const CommunityPostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.location_pin,
                color: ShareplateColor.primary,
              ),
              title: Text(
                "Jl Bedungan No.12, Malang",
                style: TextStyle(
                    color: ShareplateColor.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Within 5 km',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    isThreeLine: true,
                    leading: CircleAvatar(child: Icon(Icons.person_2)),
                    title: Text('Angela Bower'),
                    subtitle: Text('0.8 km - until 10.00'),
                    trailing: Chip(label: Text('10m'),),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscinga dipiscing elit.",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
