import 'package:buat_git/custom_widget/gradient_container.dart';
import 'package:buat_git/halaman_utama.dart';
import 'package:buat_git/questions.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'home';

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz';
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
        body: GradientContainer(
      warna1: const Color.fromARGB(255, 60, 143, 252),
      warna2: const Color.fromARGB(255, 40, 9, 91),
      child: activeScreen == 'home'
          ? HalamanUtama(switchScreen)
          : const Questions(),
    ));
  }
}
