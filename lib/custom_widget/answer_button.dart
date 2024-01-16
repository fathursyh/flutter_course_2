import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.teks, required this.klikPilih});

  final String teks;
  final void Function() klikPilih;
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
          fixedSize: const Size(170, 60),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          backgroundColor: const Color.fromARGB(255, 33, 3, 92),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      onPressed: klikPilih,
      child: Text(
        teks,
        textAlign: TextAlign.center,
      ),
    );
  }
}
