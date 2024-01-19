import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController {
  /*
  *create a list of the bottom navigation
  * we have 5 items
  * introduce a new var of type obx
   */

  List bottomNavItems = [
    {"title": "Explore", "icon": Icons.explore},
    {"title": "cloud", "icon": Icons.cloud},
    {"title": "Leaf", "icon": Icons.energy_savings_leaf_outlined},
    {"title": "Favourite", "icon": Icons.favorite_border},
    {"title": "Profile", "icon": Icons.account_circle_outlined},
  ];

  RxInt currentIndex = 0.obs;

  Widget bottomNavWidget()  {
    switch (currentIndex.value) {
      case 0:
        return Container(
          color: Colors.black,
          width: Get.width,
          height: Get.height,
        );
      case 1:
        return Container(
          color: Colors.amber,
          width: Get.width,
          height: Get.height,
        );
      case 2:
        return Container(
          color: Colors.blue,
          width: Get.width,
          height: Get.height,
        );
      case 3:
        return Container(
          color: Colors.lightGreenAccent,
          width: Get.width,
          height: Get.height,
        );
      case 4:
        return Container(
          color: Colors.greenAccent,
          width: Get.width,
          height: Get.height,
        );
      default:
        return SizedBox();
    }
  }
}
