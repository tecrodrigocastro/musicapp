import 'package:flutter/material.dart';
import 'package:orbe_music/utils/color.dart';

Widget browserAll(context, String title, String img) {
  return Container(
    height: 85,
    width: MediaQuery.of(context).size.width / 2,
    decoration: BoxDecoration(
        color: Colors.grey[900], borderRadius: BorderRadius.circular(7)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
