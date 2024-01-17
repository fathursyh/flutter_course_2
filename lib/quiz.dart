import 'package:buat_git/custom_widget/gradient_container.dart';
import 'package:buat_git/data/questions_list.dart';
import 'package:buat_git/halaman_utama.dart';
import 'package:buat_git/questions.dart';
import 'package:buat_git/result_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = []; // list for answers
  String activeScreen = 'home';

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz';
    });
  }

  void pilihJawaban(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'home';
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: activeScreen == 'result'
          ? GradientContainer(
              warna1: Colors.transparent,
              warna2: Colors.transparent,
              child: ResultScreen(
                result: selectedAnswers,
                onRestart: restartQuiz,
              ))
          : GradientContainer(
              warna1: const Color.fromARGB(255, 60, 143, 252),
              warna2: const Color.fromARGB(255, 40, 9, 91),
              child: activeScreen == 'home'
                  ? HalamanUtama(switchScreen)
                  : Questions(
                      pilihJawaban: pilihJawaban,
                    )),
    );
  }
}
