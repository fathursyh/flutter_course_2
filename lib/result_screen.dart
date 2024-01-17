import 'package:buat_git/custom_widget/gradient_container.dart';
import 'package:buat_git/data/questions_list.dart';
import 'package:buat_git/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.result, required this.onRestart});
  final void Function() onRestart;
  final List<String> result;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < result.length; i++) {
      summary.add(
        {
          'nomor_pertanyaan': i,
          'questions': questions[i].text,
          'jawaban_benar': questions[i].answers[0],
          'jawaban_kamu': result[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummary();
    final numTotalQuestion = questions.length;
    final numCorrectAnswer = summaryData.where((index) {
      return index['jawaban_kamu'] == index['jawaban_benar'];
    }).length;

    final kondisiWarna =
        numCorrectAnswer > (numTotalQuestion / 2) ? true : false;
    return GradientContainer(
      warna1: Color.fromARGB(255, 11, 10, 91),
      warna2: kondisiWarna
          ? const Color.fromARGB(255, 15, 62, 16)
          : const Color.fromARGB(255, 94, 19, 14),
      child: Container(
        margin: const EdgeInsets.all(40),
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswer out of $numTotalQuestion questions correctly!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kondisiWarna ? Colors.green : Colors.red),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSumary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
                style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 73, 122, 255))),
                icon: const Icon(Icons.refresh),
                onPressed: onRestart,
                label: const Text(
                  'Restart Quiz!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
