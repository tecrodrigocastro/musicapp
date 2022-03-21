import 'package:flutter/material.dart';

Widget favoriteArtist(String img) {
  return Container(
    height: 120,
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(70),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(img),
      ),
    ),
  );
}
