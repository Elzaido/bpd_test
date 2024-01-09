// ignore_for_file: file_names

import 'package:bpd_test/ui/screens/test_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/defaultAppBar.dart';
import '../widgets/defualtCard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
          context: context,
          title: 'Mental Health Tests',
          isHome: true,
        ),
        body: Stack(children: [
          SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(mainAxisSize: MainAxisSize.max, children: [
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Want to Make some Mental Health tests? Let\'s get started!',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Color.fromARGB(225, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'BPD Test',
                      testType: 1,
                    ),
                    title: 'Make a BPD Test!',
                    image: 'assets/image1.png'),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'Anxiety Test',
                      testType: 2,
                    ),
                    title: 'Make an anxiety Test!',
                    image: 'assets/image2.png'),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'ADHD Test',
                      testType: 3,
                    ),
                    title: 'Make an ADHD Test!',
                    image: 'assets/image3.png'),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'Depression Test',
                      testType: 4,
                    ),
                    title: 'Make a Depression Test!',
                    image: 'assets/image4.png'),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'OCD Test',
                      testType: 5,
                    ),
                    title: 'Make a OCD Test!',
                    image: 'assets/image5.png'),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'PTSD Test',
                      testType: 6,
                    ),
                    title: 'Make a PTSD Test!',
                    image: 'assets/image6.png'),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'Strees Test',
                      testType: 7,
                    ),
                    title: 'Make a Strees Test!',
                    image: 'assets/image7.png'),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'Binge Eating Disorder Test',
                      testType: 8,
                    ),
                    title: 'Make a Binge Eating Disorder Test!',
                    image: 'assets/image8.png'),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'Anorexia Test',
                      testType: 9,
                    ),
                    title: 'Make a Anorexia Test!',
                    image: 'assets/image9.png'),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'Bipolar Test',
                      testType: 10,
                    ),
                    title: 'Make a Bipolar Test!',
                    image: 'assets/image10.png'),
                const SizedBox(
                  height: 10,
                ),
                defualtCard(
                    context: context,
                    route: TestScreen(
                      title: 'Panic Attack Test',
                      testType: 11,
                    ),
                    title: 'Make a Panic Attack Test!',
                    image: 'assets/image11.png'),
                const SizedBox(
                  height: 25,
                )
              ]))
        ]));
  }
}
