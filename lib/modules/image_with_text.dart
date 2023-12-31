// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../shared/component.dart';

class ImageWithText extends StatelessWidget {
  const ImageWithText(
      {Key? key, required this.image, required this.text, required this.title});

  final String title;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: title),
      body: Stack(children: [
        SingleChildScrollView(
          child: defualtAboutPage(image: image, text: text),
        ),
      ]),
    );
  }
}
