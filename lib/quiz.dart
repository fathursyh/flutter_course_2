import 'package:buat_git/custom_widget/gradient_container.dart';
import 'package:buat_git/halaman_utama.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return const Scaffold(
        body: GradientContainer(
      warna1: Color.fromARGB(255, 60, 143, 252),
      warna2: Color.fromARGB(255, 40, 9, 91),
      child: HalamanUtama(),
    ));
  }
}
