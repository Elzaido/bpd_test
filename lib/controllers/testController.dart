// ignore_for_file: file_names

import 'package:bpd_test/db/questions.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  RxInt sum = 0.obs;
  RxInt currentQuestionIndex = 0.obs;
  Answer? selectedAnswer;

  void restart() {
    currentQuestionIndex.value = 0;
    sum.value = 0;
    selectedAnswer = null;
  }
}
