import 'package:flutter/material.dart';

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
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
