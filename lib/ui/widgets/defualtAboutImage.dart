// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget defualtAboutImage({
  required String image,
}) =>
    Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
    );
