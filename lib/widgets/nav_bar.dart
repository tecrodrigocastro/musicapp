import 'package:flutter/material.dart';
import 'package:orbe_music/screens/home_page.dart';
import 'package:orbe_music/screens/search_screen.dart';
import 'package:orbe_music/utils/color.dart';

Widget buildNavNarItem(
  context,
  String name,
  Icon icone,
  int index,
) {
  return GestureDetector(
    onTap: () {
      switch (index) {
        case 1:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchScreen()));
          break;
        default:
      }
    },
    child: Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: Color(0xDD000000),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.only(top: 10),
      child: Column(children: [
        SizedBox(
          height: 30,
          width: 30,
          child: icone,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: secondaryColor),
        )
      ]),
    ),
  );
}
