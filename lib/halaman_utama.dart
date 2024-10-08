import 'package:buat_git/custom_widget/text_custom.dart';
import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ClipOval(
            child: Image.asset(
              'assets/images/fathur.jpg',
              opacity: const AlwaysStoppedAnimation(0.8),
              semanticLabel: 'Ganteng',
              width: 280,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const TextCustom('Lets Play Fathur\'s Quiz!', 26),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton.icon(
                  icon: const Icon(Icons.arrow_right_alt),
                  style: OutlinedButton.styleFrom(
                      elevation: 8,
                      textStyle: const TextStyle(fontSize: 20),
                      fixedSize: const Size(180, 60),
                      foregroundColor: Colors.greenAccent),
                  onPressed: startQuiz,
                  label: const Text(
                    'Start Quiz',
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
