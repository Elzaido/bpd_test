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
          title: 'BPD Test',
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
                    'Want to Make a Borderline Personality Disorder test? Let\'s get started!',
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
                    route: const TestScreen(),
                    title: 'Make a BPD Test!',
                    image: 'assets/image4.png'),
                const SizedBox(
                  height: 25,
                )
              ]))
        ]));
  }
}
