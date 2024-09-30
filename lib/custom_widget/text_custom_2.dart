import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCustomDua extends StatelessWidget {
  const TextCustomDua(this.teks, this.size, this.color, {super.key});

  final String teks;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      textAlign: TextAlign.left,
      style: GoogleFonts.poppins(color: color, fontSize: size),
    );
  }
}
