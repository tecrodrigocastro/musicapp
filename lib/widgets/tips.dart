import 'package:flutter/material.dart';
import 'package:orbe_music/utils/color.dart';

Widget tips(context, Color color) {
  return Container(
    padding: EdgeInsets.all(10),
    height: 70,
    width: MediaQuery.of(context).size.width / 1.5,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        Icon(
          Icons.mic_none_outlined,
          color: Colors.white,
          size: 33,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "Never miss a song",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Expanded(
              child: Text(
                "Find SongCatcger on your \nSearch tab",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
