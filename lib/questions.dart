import 'package:buat_git/custom_widget/answer_button.dart';
import 'package:buat_git/data/dummy_questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.pilihJawaban});
  final void Function(String answer) pilihJawaban;

  @override
  State<Questions> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Questions> {
  var currentIndex = 0;

  void answerQuestion(String pilihJawaban) {
    widget.pilihJawaban(pilihJawaban);
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentIndex];

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
              style: GoogleFonts.laila(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 60,
          ),
          ...currentQuestion.getShuffledAnswers().map((index) {
            return Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: AnswerButton(
                    teks: index,
                    klikPilih: () {
                      answerQuestion(index);
                    }));
          }),
        ],
      ),
    );
  }
}
