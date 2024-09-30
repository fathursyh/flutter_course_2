import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCustom extends StatelessWidget {
  const TextCustom(this.teks, this.size, {super.key});

  final String teks;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      textAlign: TextAlign.start,
      style: GoogleFonts.poppins(color: Colors.white, fontSize: size),
    );
  }
}
