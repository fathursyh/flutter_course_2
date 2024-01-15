import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  const TextCustom(this.teks, this.size, {super.key});

  final String teks;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      style: TextStyle(color: Colors.white, fontSize: size),
    );
  }
}
