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
            Expanded(
              flex: 1,
              child: ButtonWidget(
                color: Colors.transparent,
                width: 80,
                height: 70,
                radius: 50,
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(e['icon'] as IconData, color: Color(0xff00b862), size:40),
                    const SizedBox(
                      width: 5,
                    ),
                    // TextWidget(
                    //     text: e['title'],
                    //     color:  Colors.black,
                    //     family: "Poppins",
                    //     size:  13,
                    //     weight: FontWeight.w400,
                    //     align: TextAlign.center),
                  ],
                ),
              ),
            ),
          ], // Add closing parenthesis here
        );
      },
    );
  }
}
