import 'package:flutter/material.dart';

class SummaryNumber extends StatelessWidget {
  const SummaryNumber({super.key, required this.index, required this.correct});
  final int index;
  final bool correct;
  @override
  Widget build(BuildContext context) {
    final nomor = index + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: correct ? Colors.green : Colors.red, shape: BoxShape.circle),
      child: Text(
        nomor.toString(),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
