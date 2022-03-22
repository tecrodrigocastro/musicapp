import 'package:flutter/material.dart';

Widget listTracks(String img) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img),
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Sistem of the down",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "by kildery",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz_outlined,
          color: Colors.grey,
          size: 30,
        ),
      ),
    ],
  );
}
