import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const TextWidget(
      {required this.text,
      this.size = 20,
      this.color = const Color(0xFF76984B),
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
            textStyle: TextStyle(
                fontWeight: FontWeight.bold, color: color, fontSize: size)));
  }
}
