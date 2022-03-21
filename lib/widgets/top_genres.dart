import 'package:flutter/material.dart';

Widget topGenresCard(context, String title, Color color, String img) {
  return Container(
    height: 70,
    width: MediaQuery.of(context).size.width / 2,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        RotationTransition(
          turns: AlwaysStoppedAnimation(15 / 360),
          child: Image(
            fit: BoxFit.cover,
            width: 55,
            height: 55,
            image: AssetImage(img),
          ),
        ),
      ],
    ),
  );
}
