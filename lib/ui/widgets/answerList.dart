// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../db/questions.dart';
import 'answerButton.dart';

answerList({
  required List<Question> questionList,
  required int currentQuestionIndex,
  required int sum,
}) {
  return Column(
    children: questionList[currentQuestionIndex]
        .answersList
        .map(
          (e) => answerButton(answer: e, selectedAnswer: e, sum: sum),
        )
        .toList(),
  );
}
