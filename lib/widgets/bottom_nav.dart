import 'package:farmplantui/controller/dashboard_controller.dart';
import 'package:farmplantui/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button_widget.dart';

class BottomNav extends GetView<DashboardController> {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: controller.bottomNavItems.length,
      itemBuilder: (BuildContext, index) {
        var e = controller.bottomNavItems[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonWidget(
              color: Colors.transparent,
              width: 100,
              height: 70,
              radius: 50,
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(e['icon'] as IconData),
                  const SizedBox(
                    width: 5,
                  ),
                  TextWidget(
                      text: e['title'],
                      color:  Colors.black,
                      family: "Poppins",
                      size:  13,
                      weight: FontWeight.w400,
                      align: TextAlign.center),
                ],
              ),
            ),
          ], // Add closing parenthesis here
        );
      },
    );
  }
}
