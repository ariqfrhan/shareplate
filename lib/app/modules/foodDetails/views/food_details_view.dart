import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/food_details_controller.dart';

class FoodDetailsView extends GetView<FoodDetailsController> {
  const FoodDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FoodDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FoodDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
