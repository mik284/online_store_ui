import 'package:farmplantui/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              children: [
                TextWidget(
                    text: 'Let\'s plant with us',
                    color: Colors.black,
                    align: TextAlign.center,
                    family: "Poppins",
                    weight: FontWeight.w600,
                    size: 30),
                TextWidget(
                    text: 'make the world green  again',
                    color: Colors.black,
                    align: TextAlign.center,
                    family: "Poppins",
                    weight: FontWeight.w400,
                    size: 16),
              ],
            ),
            Image.asset("assets/farmer.png",height: 350, width: 460,fit: BoxFit.cover,),
            const Column(
              children: [
                ButtonWidget(
                    color: Color(0xff00b862),
                    width: 360,
                    height: 50,
                    radius: 15,
                    widget: TextWidget(
                        text: "Sign Up",
                        color: Colors.white,
                        family: "Poppins",
                        size: 14,
                        weight: FontWeight.w400,
                        align: TextAlign.center)),
                ButtonWidget(
                    color: Colors.transparent,
                    width: 360,
                    height: 50,
                    radius: 15,
                    currentview: "createAccount",
                    widget: TextWidget(
                        text: "Create an account",
                        color: Colors.black,
                        family: "Poppins",
                        size: 16,
                        weight: FontWeight.w600,
                        align: TextAlign.center)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
