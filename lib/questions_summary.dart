import 'package:buat_git/custom_widget/text_custom_2.dart';
import 'package:buat_git/summary_number.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSumary extends StatelessWidget {
  const QuestionSumary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: SingleChildScrollView(
        child: Column(
          // PELAJARI
          children: summaryData.map((index) {
            bool getCorrectAnswer() {
              if (index['jawaban_kamu'] == index['jawaban_benar']) {
                return true;
              } else {
                return false;
              }
            }

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SummaryNumber(
                    index: index['nomor_pertanyaan'] as int,
                    correct:
                        getCorrectAnswer()), // INI PENTING BUAT DIPELAJARIN
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        index['questions'] as String,
                        style: GoogleFonts.lexend(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextCustomDua(index['jawaban_benar'] as String, 16,
                          const Color.fromARGB(200, 255, 255, 255)),
                      TextCustomDua(index['jawaban_kamu'] as String, 16,
                          getCorrectAnswer() ? Colors.green : Colors.red),
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
