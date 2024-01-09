// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../db/questions.dart';
import '../../constants/colors.dart';
import '../widgets/defaultAppBar.dart';

class TestScreen extends StatefulWidget {
  TestScreen({super.key, required this.testType, required this.title});

  int? testType;
  String? title;

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  //define the Questions lists:
  List<Question> bpdTest = getBPDQuestions();
  List<Question> anxietyTest = getANXIETYQuestons();
  List<Question> adhdTest = getADHDQuestons();
  List<Question> depressionTest = getDepressionQuestons();
  List<Question> ocdTest = getOCDQuestons();
  List<Question> ptsdTest = getPTSDQuestons();
  List<Question> stressTest = getStressQuestons();
  List<Question> bingeEatingDisorderTest = getBingeEatingDisorderQuestons();
  List<Question> anorexiaTest = getAnorexiaQuestons();
  List<Question> bipolarTest = getBipolarQuestons();
  List<Question> panicAttackTest = getPanicAttackQuestons();

  ////////////////////////////////////////////////////////////////////

  int currentQuestionIndex = 0;
  bool qAnswer = false;
  int score = 0;
  int sum = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
            context: context, title: widget.title!, isHome: false),
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
                    questionWidget(type: widget.testType!),
                    const SizedBox(
                      height: 10,
                    ),
                    answerList(type: widget.testType!),
                    const SizedBox(
                      height: 10,
                    ),
                    nextButton(type: widget.testType!),
                    const SizedBox(
                      height: 65,
                    )
                  ]),
            ),
          ),
        ]));
  }

  questionWidget({required int type}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${type == 1 ? bpdTest.length.toString() : type == 2 ? anxietyTest.length.toString() : type == 3 ? adhdTest.length.toString() : type == 4 ? depressionTest.length.toString() : type == 5 ? ocdTest.length.toString() : type == 6 ? ptsdTest.length.toString() : type == 7 ? stressTest.length.toString() : type == 8 ? bingeEatingDisorderTest.length.toString() : type == 9 ? anorexiaTest.length.toString() : type == 10 ? bipolarTest.length.toString() : panicAttackTest.length.toString()}",
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
            type == 1
                ? bpdTest[currentQuestionIndex].questionText
                : type == 2
                    ? anxietyTest[currentQuestionIndex].questionText
                    : type == 3
                        ? adhdTest[currentQuestionIndex].questionText
                        : type == 4
                            ? depressionTest[currentQuestionIndex].questionText
                            : type == 5
                                ? ocdTest[currentQuestionIndex].questionText
                                : type == 6
                                    ? ptsdTest[currentQuestionIndex]
                                        .questionText
                                    : type == 7
                                        ? stressTest[currentQuestionIndex]
                                            .questionText
                                        : type == 8
                                            ? bingeEatingDisorderTest[
                                                    currentQuestionIndex]
                                                .questionText
                                            : type == 9
                                                ? anorexiaTest[
                                                        currentQuestionIndex]
                                                    .questionText
                                                : type == 10
                                                    ? bipolarTest[
                                                            currentQuestionIndex]
                                                        .questionText
                                                    : panicAttackTest[
                                                            currentQuestionIndex]
                                                        .questionText,
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

  answerList({required int type}) {
    return type == 1
        ? Column(
            children: bpdTest[currentQuestionIndex]
                .answersList
                .map(
                  (e) => answerButton(e),
                )
                .toList())
        : type == 2
            ? Column(
                children: anxietyTest[currentQuestionIndex]
                    .answersList
                    .map(
                      (e) => answerButton(e),
                    )
                    .toList())
            : type == 3
                ? Column(
                    children: adhdTest[currentQuestionIndex]
                        .answersList
                        .map(
                          (e) => answerButton(e),
                        )
                        .toList())
                : type == 4
                    ? Column(
                        children: depressionTest[currentQuestionIndex]
                            .answersList
                            .map(
                              (e) => answerButton(e),
                            )
                            .toList())
                    : type == 5
                        ? Column(
                            children: ocdTest[currentQuestionIndex]
                                .answersList
                                .map(
                                  (e) => answerButton(e),
                                )
                                .toList())
                        : type == 6
                            ? Column(
                                children: ptsdTest[currentQuestionIndex]
                                    .answersList
                                    .map(
                                      (e) => answerButton(e),
                                    )
                                    .toList())
                            : type == 7
                                ? Column(
                                    children: stressTest[currentQuestionIndex]
                                        .answersList
                                        .map(
                                          (e) => answerButton(e),
                                        )
                                        .toList())
                                : type == 8
                                    ? Column(
                                        children: bingeEatingDisorderTest[
                                                currentQuestionIndex]
                                            .answersList
                                            .map(
                                              (e) => answerButton(e),
                                            )
                                            .toList())
                                    : type == 9
                                        ? Column(
                                            children: anorexiaTest[
                                                    currentQuestionIndex]
                                                .answersList
                                                .map(
                                                  (e) => answerButton(e),
                                                )
                                                .toList())
                                        : type == 10
                                            ? Column(
                                                children: bipolarTest[
                                                        currentQuestionIndex]
                                                    .answersList
                                                    .map(
                                                      (e) => answerButton(e),
                                                    )
                                                    .toList())
                                            : Column(
                                                children: panicAttackTest[
                                                        currentQuestionIndex]
                                                    .answersList
                                                    .map(
                                                      (e) => answerButton(e),
                                                    )
                                                    .toList());
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

  nextButton({required int type}) {
    bool isLastQuestion = false;
    if (type == 1) {
      if (currentQuestionIndex == bpdTest.length - 1) {
        isLastQuestion = true;
      }
    } else if (type == 2) {
      if (currentQuestionIndex == anxietyTest.length - 1) {
        isLastQuestion = true;
      }
    } else if (type == 3) {
      if (currentQuestionIndex == adhdTest.length - 1) {
        isLastQuestion = true;
      }
    } else if (type == 4) {
      if (currentQuestionIndex == depressionTest.length - 1) {
        isLastQuestion = true;
      }
    } else if (type == 5) {
      if (currentQuestionIndex == ocdTest.length - 1) {
        isLastQuestion = true;
      }
    } else if (type == 6) {
      if (currentQuestionIndex == ptsdTest.length - 1) {
        isLastQuestion = true;
      }
    } else if (type == 7) {
      if (currentQuestionIndex == stressTest.length - 1) {
        isLastQuestion = true;
      }
    } else if (type == 8) {
      if (currentQuestionIndex == bingeEatingDisorderTest.length - 1) {
        isLastQuestion = true;
      }
    } else if (type == 9) {
      if (currentQuestionIndex == anorexiaTest.length - 1) {
        isLastQuestion = true;
      }
    } else if (type == 10) {
      if (currentQuestionIndex == bipolarTest.length - 1) {
        isLastQuestion = true;
      }
    } else if (type == 11) {
      if (currentQuestionIndex == panicAttackTest.length - 1) {
        isLastQuestion = true;
      }
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
                      context: context,
                      builder: (_) => showScoreDialog(type: type));
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

  showScoreDialog({required int type}) {
    double avg = sum / 12;
    String minimizedAvg = avg.toStringAsFixed(2);
    return AlertDialog(
        title: Text(
          "Your score is $minimizedAvg",
          style:
              const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        content: type == 1
            ? Column(
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
              )
            : type == 2
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Scoring',
                        textAlign: TextAlign.left,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        title: Text('0 - 20'),
                        trailing: Text('No anxiety'),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        title: Text('20 - 40'),
                        trailing: Text('Mild anxiety'),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        title: Text('40 - 60'),
                        trailing: Text('Moderate anxiety'),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        title: Text('60 - 100'),
                        trailing: Text('Severe anxiety'),
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
                  )
                : type == 3
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Scoring',
                            textAlign: TextAlign.left,
                          ),
                          const ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 2.0),
                            title: Text('0 - 60'),
                            trailing: Text('No ADHD'),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          const ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 2.0),
                            title: Text('60 - 70'),
                            trailing: Text('Might have ADHD'),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          const ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 2.0),
                            title: Text('70- 120'),
                            trailing: Text(
                                'Your symptoms are serious please seek a professional help'),
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
                      )
                    : type == 4
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Scoring',
                                textAlign: TextAlign.left,
                              ),
                              const ListTile(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                title: Text('0 - 40'),
                                trailing: Text('No Depression'),
                              ),
                              const Divider(
                                height: 1,
                                color: Colors.grey,
                                thickness: 1,
                              ),
                              const ListTile(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                title: Text('40 - 90'),
                                trailing: Text('Mild depression'),
                              ),
                              const Divider(
                                height: 1,
                                color: Colors.grey,
                                thickness: 1,
                              ),
                              const ListTile(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                title: Text('100 - 140'),
                                trailing: Text('Moderate depression'),
                              ),
                              const Divider(
                                height: 1,
                                color: Colors.grey,
                                thickness: 1,
                              ),
                              const ListTile(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                title: Text('140 - 200'),
                                trailing: Text('Severe depression'),
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
                          )
                        : type == 5
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Scoring',
                                    textAlign: TextAlign.left,
                                  ),
                                  const ListTile(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    title: Text('0 - 40'),
                                    trailing: Text('No OCD'),
                                  ),
                                  const Divider(
                                    height: 1,
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                  const ListTile(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    title: Text('50 - 80'),
                                    trailing: Text('Mild OCD'),
                                  ),
                                  const Divider(
                                    height: 1,
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                  const ListTile(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    title: Text('90 - 120'),
                                    trailing: Text('Moderate OCD'),
                                  ),
                                  const Divider(
                                    height: 1,
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                  const ListTile(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    title: Text('130 - 180'),
                                    trailing: Text('Extremely severe'),
                                  ),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
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
                              )
                            : type == 7
                                ? Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        'Scoring',
                                        textAlign: TextAlign.left,
                                      ),
                                      const ListTile(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        title: Text('0 - 50'),
                                        trailing: Text('Low level stress'),
                                      ),
                                      const Divider(
                                        height: 1,
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                      const ListTile(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        title: Text('60 - 100'),
                                        trailing: Text('Moderate stress'),
                                      ),
                                      const Divider(
                                        height: 1,
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                      const ListTile(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        title: Text('110 - 160'),
                                        trailing: Text('High level'),
                                      ),
                                      const SizedBox(height: 20),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
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
                                  )
                                : type == 10
                                    ? Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            'Scoring',
                                            textAlign: TextAlign.left,
                                          ),
                                          const ListTile(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 2.0),
                                            title: Text('0 - 30'),
                                            trailing: Text('No bipolar'),
                                          ),
                                          const Divider(
                                            height: 1,
                                            color: Colors.grey,
                                            thickness: 1,
                                          ),
                                          const ListTile(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 2.0),
                                            title: Text('40 - 60'),
                                            trailing: Text('Mild bipolar'),
                                          ),
                                          const Divider(
                                            height: 1,
                                            color: Colors.grey,
                                            thickness: 1,
                                          ),
                                          const ListTile(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 2.0),
                                            title: Text('70 - 90'),
                                            trailing: Text('Moderate bipolar'),
                                          ),
                                          const Divider(
                                            height: 1,
                                            color: Colors.grey,
                                            thickness: 1,
                                          ),
                                          const ListTile(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 2.0),
                                            title: Text('90 - 110'),
                                            trailing: Text('Severe bipolar'),
                                          ),
                                          const SizedBox(height: 20),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
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
                                      )
                                    : type == 11
                                        ? Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Text(
                                                'Scoring',
                                                textAlign: TextAlign.left,
                                              ),
                                              const ListTile(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 2.0),
                                                title: Text('0 - 20'),
                                                trailing:
                                                    Text('No panic disorder'),
                                              ),
                                              const Divider(
                                                height: 1,
                                                color: Colors.grey,
                                                thickness: 1,
                                              ),
                                              const ListTile(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 2.0),
                                                title: Text('20 - 40'),
                                                trailing:
                                                    Text('Mild panic disorder'),
                                              ),
                                              const Divider(
                                                height: 1,
                                                color: Colors.grey,
                                                thickness: 1,
                                              ),
                                              const ListTile(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 2.0),
                                                title: Text('40 - 60'),
                                                trailing: Text(
                                                    'Moderate panic disorder'),
                                              ),
                                              const Divider(
                                                height: 1,
                                                color: Colors.grey,
                                                thickness: 1,
                                              ),
                                              const ListTile(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 2.0),
                                                title: Text('60 - 100'),
                                                trailing: Text(
                                                    'Severe panic disorder'),
                                              ),
                                              const SizedBox(height: 20),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                height: 48,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor: mainColor,
                                                    shape:
                                                        const StadiumBorder(),
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
                                          )
                                        : type == 8
                                            ? Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  const Text(
                                                    'Scoring',
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  const ListTile(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    title: Text('0 - 40'),
                                                    trailing: Text(
                                                        'No Binge Eating Disorder '),
                                                  ),
                                                  const Divider(
                                                    height: 1,
                                                    color: Colors.grey,
                                                    thickness: 1,
                                                  ),
                                                  const ListTile(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    title: Text('40 - 90'),
                                                    trailing: Text(
                                                        'Mild Binge Eating Disorder'),
                                                  ),
                                                  const Divider(
                                                    height: 1,
                                                    color: Colors.grey,
                                                    thickness: 1,
                                                  ),
                                                  const ListTile(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    title: Text('100 - 140'),
                                                    trailing: Text(
                                                        'Moderate Binge Eating Disorder'),
                                                  ),
                                                  const Divider(
                                                    height: 1,
                                                    color: Colors.grey,
                                                    thickness: 1,
                                                  ),
                                                  const ListTile(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    title: Text('140 - 200'),
                                                    trailing: Text(
                                                        'Severe Binge Eating Disorder'),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.5,
                                                    height: 48,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        foregroundColor:
                                                            Colors.white,
                                                        backgroundColor:
                                                            mainColor,
                                                        shape:
                                                            const StadiumBorder(),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                        setState(() {
                                                          currentQuestionIndex =
                                                              0;
                                                          sum = 0;
                                                          selectedAnswer = null;
                                                        });
                                                      },
                                                      child:
                                                          const Text("Restart"),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            : type == 6
                                                ? Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Text(
                                                        'Scoring',
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      const ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        2.0),
                                                        title: Text('0 - 60'),
                                                        trailing:
                                                            Text('No trauma'),
                                                      ),
                                                      const Divider(
                                                        height: 1,
                                                        color: Colors.grey,
                                                        thickness: 1,
                                                      ),
                                                      const ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        2.0),
                                                        title: Text('70 - 100'),
                                                        trailing:
                                                            Text('Mild PTSD'),
                                                      ),
                                                      const Divider(
                                                        height: 1,
                                                        color: Colors.grey,
                                                        thickness: 1,
                                                      ),
                                                      const ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        2.0),
                                                        title:
                                                            Text('110 - 170'),
                                                        trailing: Text(
                                                            'Moderate PTSD'),
                                                      ),
                                                      const Divider(
                                                        height: 1,
                                                        color: Colors.grey,
                                                        thickness: 1,
                                                      ),
                                                      const ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        2.0),
                                                        title:
                                                            Text('180 - 220'),
                                                        trailing: Text(
                                                            'Severe PTSD '),
                                                      ),
                                                      const SizedBox(
                                                          height: 20),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.5,
                                                        height: 48,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            foregroundColor:
                                                                Colors.white,
                                                            backgroundColor:
                                                                mainColor,
                                                            shape:
                                                                const StadiumBorder(),
                                                          ),
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                            setState(() {
                                                              currentQuestionIndex =
                                                                  0;
                                                              sum = 0;
                                                              selectedAnswer =
                                                                  null;
                                                            });
                                                          },
                                                          child: const Text(
                                                              "Restart"),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                : Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Text(
                                                        'Scoring',
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      const ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        2.0),
                                                        title: Text('0 - 50'),
                                                        trailing:
                                                            Text('No Anorexia'),
                                                      ),
                                                      const Divider(
                                                        height: 1,
                                                        color: Colors.grey,
                                                        thickness: 1,
                                                      ),
                                                      const ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        2.0),
                                                        title: Text('60 - 120'),
                                                        trailing: Text(
                                                            'Mild Anorexia'),
                                                      ),
                                                      const Divider(
                                                        height: 1,
                                                        color: Colors.grey,
                                                        thickness: 1,
                                                      ),
                                                      const ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        2.0),
                                                        title:
                                                            Text('130 - 180'),
                                                        trailing: Text(
                                                            'Moderate Anorexia'),
                                                      ),
                                                      const Divider(
                                                        height: 1,
                                                        color: Colors.grey,
                                                        thickness: 1,
                                                      ),
                                                      const ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        2.0),
                                                        title:
                                                            Text('190 - 260'),
                                                        trailing: Text(
                                                            'Severe Anorexia'),
                                                      ),
                                                      const SizedBox(
                                                          height: 20),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.5,
                                                        height: 48,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            foregroundColor:
                                                                Colors.white,
                                                            backgroundColor:
                                                                mainColor,
                                                            shape:
                                                                const StadiumBorder(),
                                                          ),
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                            setState(() {
                                                              currentQuestionIndex =
                                                                  0;
                                                              sum = 0;
                                                              selectedAnswer =
                                                                  null;
                                                            });
                                                          },
                                                          child: const Text(
                                                              "Restart"),
                                                        ),
                                                      ),
                                                    ],
                                                  ));
  }
}
