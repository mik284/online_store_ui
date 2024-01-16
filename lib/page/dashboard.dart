import 'package:farmplantui/controller/dashboard_controller.dart';
import 'package:farmplantui/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends GetView {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Good Morning"),
      ),

      bottomNavigationBar: SizedBox( width: Get.width, height: 100, child: const BottomNav())
    );
  }
}
