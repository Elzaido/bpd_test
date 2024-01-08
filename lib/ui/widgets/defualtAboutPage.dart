// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'defualtAboutImage.dart';

Widget defualtAboutPage({
  required String image,
  required String text,
}) {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      children: [
        defualtAboutImage(image: image),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontFamily: 'Cairo',
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    ),
  );
}
