// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../db/questions.dart';

Widget questionWidget({
  required List<Question> questionList,
  required int currentQuestionIndex,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      const SizedBox(height: 20),
      Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          questionList[currentQuestionIndex].questionText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      )
    ],
  );
}
