import 'package:buat_git/custom_widget/answer_button.dart';
import 'package:buat_git/data/dummy_questions.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Questions> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
              )),
          const SizedBox(
            height: 60,
          ),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: AnswerButton(teks: answer, klikPilih: () {}));
          }),
        ],
      ),
    );
  }
}
