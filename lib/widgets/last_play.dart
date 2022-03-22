import 'package:flutter/material.dart';
import 'package:orbe_music/screens/library_screen.dart';

Widget lastPlay(context, String img1, String img2, String img3, String title,
    String subtitle) {
  return GestureDetector(
    onTap: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LibraryScreen()));
    },
    child: Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 240,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 170,
                width: 95,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    image: AssetImage(img1),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 85,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        image: AssetImage(img2),
                      ),
                    ),
                  ),
                  Container(
                    height: 85,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        image: AssetImage(img3),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text(
              subtitle,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    ),
  );
}
