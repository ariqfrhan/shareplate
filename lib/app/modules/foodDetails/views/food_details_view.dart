import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/food_details_controller.dart';

class FoodDetailsView extends GetView<FoodDetailsController> {
  FoodDetailsView({Key? key}) : super(key: key);

  final List<String> items = List.generate(4, (index) => 'Burger');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Toko Roti Emak - Malang',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.timer_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '20.00 - 21.00',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
          SliverToBoxAdapter(
              child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      '15 left',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  color: ShareplateColor.primary,
                  width: double.maxFinite,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Text(
                            'Jln. Kappan Sukses No. 20 Lowokwaru Malang',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xFFCEEAC8),
                          ),
                          child: Icon(
                            Icons.location_pin,
                            color: ShareplateColor.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What you might get in your bag',
                        style: TextStyle(
                            color: ShareplateColor.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      BulletedList(
                        bulletColor: Colors.black,
                        listItems: items,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color(0xFFCEEAC8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Allergens Alert',
                        style: TextStyle(
                            color: ShareplateColor.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Eggs, Milk, Wheat, Nuts',
                        style: TextStyle(
                            color: ShareplateColor.primary, fontSize: 14),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Order', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
          style: ElevatedButton.styleFrom(
            backgroundColor: ShareplateColor.primary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            padding: EdgeInsets.symmetric(vertical: 5)
          ),
        ),
      ),
    );
  }
}
