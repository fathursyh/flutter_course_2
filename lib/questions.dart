import 'package:buat_git/custom_widget/answer_button.dart';
import 'package:buat_git/custom_widget/text_custom.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextCustom('pertanyaan disini', 20),
        const SizedBox(
          height: 30,
        ),
        AnswerButton(teks: 'jawaban1', klikPilih: () {}),
        AnswerButton(teks: 'jawaban2', klikPilih: () {}),
        AnswerButton(teks: 'jawaban3', klikPilih: () {}),
        AnswerButton(teks: 'jawaban4', klikPilih: () {}),
      ],
    );
  }
}
