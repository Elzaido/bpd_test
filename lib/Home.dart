// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print, await_only_futures, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/HomeCubit/cubit.dart';
import '../shared/HomeCubit/state.dart';
import '../shared/component.dart';
import '../models/texts.dart';
import 'modules/image_with_text.dart';
import 'modules/quiz_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
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
                    spaceBy10(),
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
                    spaceBy10(),
                    defualtCard(
                        context: context,
                        route: ImageWithText(
                          title: 'Borderline Personality Disorder Overview',
                          image: 'assets/image2.png',
                          text: text1,
                        ),
                        title: 'Borderline Personality Disorder Overview',
                        image: 'assets/image2.png'),
                    spaceBy10(),
                    defualtCard(
                        context: context,
                        route: const QuizScreen(),
                        title: 'Make a BPD Test!',
                        image: 'assets/image4.png'),
                    defualButton(
                        context: context,
                        isAd: false,
                        onTap: () {
                          HomeCubit.get(context)
                              .navigateToUrl(HomeCubit.get(context).url, true);
                        },
                        text: 'Get Medical Advice Now!'),
                    const SizedBox(
                      height: 65,
                    )
                  ]))
            ]));
      },
    );
  }
}
