// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget defualtCard({
  required BuildContext context,
  required Widget route,
  required String title,
  required String image,
}) {
  return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        child: Stack(alignment: Alignment.center, children: [
          Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  opacity: 0.5, fit: BoxFit.cover, image: AssetImage(image)),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
                fontFamily: 'Cairo',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ]),
      ));
}
