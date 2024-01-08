// ignore_for_file: file_names

import 'package:bpd_test/controllers/testController.dart';
import 'package:bpd_test/db/questions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';

TestController testController = Get.find();

showScoreDialog({
  required int sum,
  required BuildContext context,
  required int currentQuestionIndex,
  Answer? selectedAnswer,
}) {
  double avg = sum / 12;
  String minimizedAvg = avg.toStringAsFixed(2);
  return AlertDialog(
    title: Text(
      "Your score is $minimizedAvg",
      style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Scoring',
          textAlign: TextAlign.left,
        ),
        const ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
          title: Text('0 - 25'),
          trailing: Text('Not likely having a BPD'),
        ),
        const Divider(
          height: 1,
          color: Colors.grey,
          thickness: 1,
        ),
        const ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
          title: Text('25 - 50'),
          trailing: Text('Possible having a BPD'),
        ),
        const Divider(
          height: 1,
          color: Colors.grey,
          thickness: 1,
        ),
        const ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
          title: Text('50 - 75'),
          trailing: Text('Likely having a BPD'),
        ),
        const Divider(
          height: 1,
          color: Colors.grey,
          thickness: 1,
        ),
        const ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
          title: Text('75 - 100'),
          trailing: Text('Most likely having a BPD'),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 48,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: mainColor,
              shape: const StadiumBorder(),
            ),
            onPressed: () {
              Navigator.pop(context);
              testController.restart();
            },
            child: const Text("Restart"),
          ),
        ),
      ],
    ),
  );
}
