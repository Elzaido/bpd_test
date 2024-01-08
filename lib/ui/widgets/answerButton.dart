// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../db/questions.dart';

Widget answerButton({
  required Answer answer,
  Answer? selectedAnswer,
  required int sum,
}) {
  bool isSelected = answer == selectedAnswer;

  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 8),
    height: 48,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: isSelected ? Colors.white : Colors.black,
        backgroundColor: isSelected
            ? Colors.orangeAccent
            : const Color.fromARGB(255, 255, 235, 210),
        shape: const StadiumBorder(),
      ),
      onPressed: () {
        if (selectedAnswer == null) {
          sum += answer.persentage;
          setState(() {
            selectedAnswer = null;
            selectedAnswer = answer;
          });
        } else if (selectedAnswer != null) {
          sum += answer.persentage;

          setState(() {
            selectedAnswer = null;
            selectedAnswer = answer;
          });
        }
      },
      child: Text(answer.answerText),
    ),
  );
}
