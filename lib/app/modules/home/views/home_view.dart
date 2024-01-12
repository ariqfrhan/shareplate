import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shareplate/app/utils/shareplate_colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Shareplate',
            style: TextStyle(
                color: ShareplateColor.primary, fontFamily: 'Amaranth'),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              _bottomAppBarItem(
                context,
                icon: Icon(Icons.home),
                page: 0,
                label: Text('Home')
              ),
            ],
          ),
        ),
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
              SizedBox(
                height: 8,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Now Available",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        TextButton(onPressed: () {}, child: Text('See All >'))
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 160,
                        child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 1,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      width: 158,
                                      height: 100,
                                      child: Image.network(
                                        "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      height: 30,
                                      color: ShareplateColor.primary,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Toko Roti Emak',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Rp 20.000',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: ShareplateColor.primary,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Rp 50.000',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.grey,
                                            fontSize: 12),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '2.5km',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required icon, required page, required label}) {
    return Column(
      children: [Icon(icon), Text(label)],
    );
  }
}
