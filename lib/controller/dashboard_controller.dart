import 'package:flutter/material.dart';

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
}
