import 'package:buat_git/custom_widget/gradient_container.dart';
import 'package:buat_git/custom_widget/text_custom.dart';
import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        warna1: const Color.fromARGB(255, 60, 143, 252),
        warna2: const Color.fromARGB(255, 20, 1, 50),
        warna3: const Color.fromARGB(255, 88, 0, 41),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 280,
              ),
              const SizedBox(
                height: 25,
              ),
              const TextCustom('Mari Bermain Quiz Flutter', 20),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    fixedSize: Size(180, 60),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(fontSize: 20),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
