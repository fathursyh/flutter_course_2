import 'package:flutter/material.dart';

class QuestionSumary extends StatelessWidget {
  const QuestionSumary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          // PELAJARI
          children: summaryData.map((index) {
            return Row(
              children: [
                Text(((index['nomor_pertanyaan'] as int) + 1)
                    .toString()), // INI PENTING BUAT DIPELAJARIN
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        index['questions'] as String,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(index['jawaban_benar'] as String),
                      Text(index['jawaban_kamu'] as String)
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
