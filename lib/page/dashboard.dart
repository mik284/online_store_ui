import 'package:farmplantui/controller/dashboard_controller.dart';
import 'package:farmplantui/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class Dashboard extends GetView {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // leading: const SizedBox(),
          centerTitle: true,
          title: const Align(
            alignment: Alignment.bottomLeft,
            child: TextWidget(
                text: 'Good',
                color: Colors.black54,
                align: TextAlign.center,
                family: "Poppins",
                weight: FontWeight.w300,
                size: 30),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                    text: 'Morning🌵',
                    color: Colors.black,
                    align: TextAlign.center,
                    family: "Poppins",
                    weight: FontWeight.w600,
                    size: 30),
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child:
                  SizedBox(height: 400, width: 100, child: Icon(Icons.search)),
            )
          ],
        ),

        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
                topRight: Radius.circular(50))),
            child: SizedBox(
                width: Get.width, height: 100, child: const BottomNav())));
  }
}
