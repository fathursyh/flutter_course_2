import 'package:buat_git/data/dummy_questions.dart';
import 'package:buat_git/questions.dart';
import 'package:buat_git/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});

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

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $numCorrectAnswer out of $numTotalQuestion questions correctly!',
            style: TextStyle(
                color: numCorrectAnswer > (numTotalQuestion / 2)
                    ? Colors.green
                    : Colors.red),
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionSumary(summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton(onPressed: () {}, child: const Text('Restart Quiz!')),
        ],
      ),
    );
  }
}
