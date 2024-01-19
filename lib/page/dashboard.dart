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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 100,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffffeac9),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image.asset('assets/cactus001.jpg', height: 50, fit: BoxFit.cover ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/cactus001.jpg',
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                            text: const TextSpan(children: <InlineSpan>[
                          TextSpan(
                              text: "How to Raise our Cactus\n",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  fontFamily: "Poppins")),
                          WidgetSpan(
                              child: SizedBox(
                            height: 25,
                          )),
                          TextSpan(
                              text:
                                  "How to maintain a happy and \nhealthy cactus. ",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  fontFamily: "Poppins")),
                          WidgetSpan(
                              child: SizedBox(
                            height: 20,
                          )),
                        ])),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: SizedBox(
                width: Get.width, height: 100, child: const BottomNav())));
  }
}
