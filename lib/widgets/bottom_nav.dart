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
    return ButtonWidget(
        color: Colors.white,
        width: Get.width,
        currentview: "bottom",
        height: Get.height,
        radius: 30,
        widget: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.bottomNavItems.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext BuildContext, index) {
            var e = controller.bottomNavItems[index];
            return InkWell(
              child: Obx(
                () => Container(
                  decoration: BoxDecoration(
                      color: controller.currentIndex.value == index
                          ? Color(0xff00b862)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(15)),
                  width: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(e['icon'] as IconData,
                            color: controller.currentIndex.value == index
                                ? Colors.white
                                : Color(0xff00b862),
                            size: 40),
                        const SizedBox(
                          width: 5,
                        ),
                        TextWidget(
                            text: e['title'],
                            color: controller.currentIndex.value == index
                                ? Colors.white
                                : Colors.black,
                            family: "Poppins",
                            size: 12,
                            weight: FontWeight.w400,
                            align: TextAlign.center),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () => {controller.currentIndex.value = index},
            );
          },
        ));
  }
}
