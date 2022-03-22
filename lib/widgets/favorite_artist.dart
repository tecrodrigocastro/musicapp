import 'package:flutter/material.dart';
import 'package:orbe_music/screens/music_play_screen.dart';

Widget favoriteArtist(String img, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MusicPlay()));
    },
    child: Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        ),
      ),
    ),
  );
}
