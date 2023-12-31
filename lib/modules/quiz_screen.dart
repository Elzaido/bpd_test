// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import '../models/question_model.dart';
import '../shared/component.dart';
import '../shared/constant.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  //define the datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  bool qAnswer = false;
  int score = 0;
  int sum = 0;
  Answer? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            defaultAppBar(context: context, title: 'BPD Test', isHome: false),
        body: Stack(children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    questionWidget(),
                    SizedBox(
                      height: 10,
                    ),
                    answerList(),
                    SizedBox(
                      height: 10,
                    ),
                    nextButton(),
                    SizedBox(
                      height: 65,
                    )
                  ]),
            ),
          ),
        ]));
  }

  questionWidget() {
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

  answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => answerButton(e),
          )
          .toList(),
    );
  }

  Widget answerButton(Answer answer) {
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
              : Color.fromARGB(255, 255, 235, 210),
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

  nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Row(
      children: [
        if (currentQuestionIndex > 0)
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: mainColor,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  setState(() {
                    currentQuestionIndex--;
                  });
                },
                child: Text("Back"),
              ),
            ),
          ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: mainColor,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                if (qAnswer == true) {
                  score++;
                  qAnswer = false;
                }

                if (isLastQuestion) {
                  //display score

                  showDialog(
                      context: context, builder: (_) => showScoreDialog());
                } else {
                  //next question
                  setState(() {
                    currentQuestionIndex++;
                  });
                }
              },
              child: Text(isLastQuestion ? "Submit" : "Next"),
            ),
          ),
        ),
      ],
    );
  }

  showScoreDialog() {
    double avg = sum / 12;
    String minimizedAvg = avg.toStringAsFixed(2);
    return AlertDialog(
      title: Text(
        "Your score is $minimizedAvg",
        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Scoring',
            textAlign: TextAlign.left,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
            title: Text('0 - 25'),
            trailing: Text('Not likely having a BPD'),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
            thickness: 1,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
            title: Text('25 - 50'),
            trailing: Text('Possible having a BPD'),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
            thickness: 1,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
            title: Text('50 - 75'),
            trailing: Text('Likely having a BPD'),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
            thickness: 1,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
            title: Text('75 - 100'),
            trailing: Text('Most likely having a BPD'),
          ),
          SizedBox(height: 20),
          Container(
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
                setState(() {
                  currentQuestionIndex = 0;
                  sum = 0;
                  selectedAnswer = null;
                });
              },
              child: Text("Restart"),
            ),
          ),
        ],
      ),
    );
  }
}
