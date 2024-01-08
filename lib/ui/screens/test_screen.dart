import 'package:flutter/material.dart';
import '../../db/questions.dart';
import '../../constants/colors.dart';
import '../widgets/answerList.dart';
import '../widgets/defaultAppBar.dart';
import '../widgets/questionWidget.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  //define the datas
  List<Question> questionList = getBPDQuestions();
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
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    questionWidget(
                        questionList: questionList,
                        currentQuestionIndex: currentQuestionIndex),
                    const SizedBox(
                      height: 10,
                    ),
                    answerList(
                      questionList: questionList,
                      currentQuestionIndex: currentQuestionIndex,
                      sum: sum,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    nextButton(),
                    const SizedBox(
                      height: 65,
                    )
                  ]),
            ),
          ),
        ]));
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
            child: SizedBox(
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
                child: const Text("Back"),
              ),
            ),
          ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
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
        style:
            const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
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
                setState(() {
                  currentQuestionIndex = 0;
                  sum = 0;
                  selectedAnswer = null;
                });
              },
              child: const Text("Restart"),
            ),
          ),
        ],
      ),
    );
  }
}
