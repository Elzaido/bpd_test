// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'constant.dart';

PreferredSizeWidget defaultAppBar({
  required BuildContext context,
  required String title,
  bool isHome = false,
}) {
  return AppBar(
    backgroundColor: mainColor,
    title: isHome
        ? Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold),
            ),
          )
        : Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold),
          ),
    leading: !isHome
        ? IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        : null,
  );
}

Widget defualtCard({
  required BuildContext context,
  required Widget route,
  required String title,
  required String image,
  bool isNotVideo = true,
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
            height: 200,
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
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ]),
      ));
}

Widget defualButton({
  required void Function()? onTap,
  required String text,
  bool isAd = false,
  required context,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: mainColor, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
      ),
    ),
  );
}

Widget defualtAboutPage({
  required String image,
  required String text,
}) {
  return SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    child: Column(
      children: [
        defualtAboutImage(image: image),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 65,
        ),
      ],
    ),
  );
}

Widget defualtAboutImage({
  required String image,
}) =>
    Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
    );

Widget spaceBy10() => SizedBox(
      height: 10,
    );
