import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final double width;
  final double height, radius;
  final Widget widget;

  final currentview;

  const ButtonWidget(
      {super.key,
        required this.color,
        required this.width,
        required this.height,
        this.currentview,
        required this.radius,
        required this.widget});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: currentview.toString() == "bottom"
              ? BorderRadius.only(
              topLeft: Radius.circular(radius),
              topRight: Radius.circular(radius))
              : BorderRadius.circular(radius),
          border: currentview == "createAccount" ? Border.all(color: color) :Border.all(color: Colors.white)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(child: widget),
      ),
    );
  }
}