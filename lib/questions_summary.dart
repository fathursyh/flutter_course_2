import 'package:buat_git/custom_widget/text_custom.dart';
import 'package:buat_git/custom_widget/text_custom_2.dart';
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
                TextCustom(((index['nomor_pertanyaan'] as int) + 1).toString(),
                    15), // INI PENTING BUAT DIPELAJARIN
                Expanded(
                  child: Column(
                    children: [
                      TextCustom(index['questions'] as String, 20),
                      const SizedBox(
                        height: 5,
                      ),
                      TextCustomDua(
                          index['jawaban_benar'] as String, 20, Colors.green),
                      TextCustomDua(
                          index['jawaban_kamu'] as String, 20, Colors.red),
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
