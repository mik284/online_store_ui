import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final String family;
  final double size;
  final FontWeight weight;
  final TextAlign align;

  const TextWidget(
      {super.key,
        required this.text,
        required this.color,
        required this.family,
        required this.size,
        required this.weight,
        required this.align});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: align,
        style: GoogleFonts.getFont(family,
            textStyle:
            TextStyle(color: color, fontSize: size, fontWeight: weight)));
  }
}