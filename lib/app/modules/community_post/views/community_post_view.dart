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
        child: Column(
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
            Expanded(
                child: ListView(children: [
              PostCard(),
              PostCard()
            ]))
          ],
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(
              'Angela Bower',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 14),
            ),
            subtitle: Row(
              children: [
                Text(
                  '0.8 km',
                  style: TextStyle(fontSize: 10),
                ),
                Icon(Icons.remove),
                Text('Until 10.00', style: TextStyle(fontSize: 10))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24)),
            width: double.maxFinite,
            height: 300,
            child: Image.network(
              "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscinga dipiscing elit.",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          Text(
            '10 minutes ago',
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
