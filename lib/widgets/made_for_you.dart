import 'package:flutter/material.dart';
import 'package:orbe_music/utils/color.dart';

Widget madeYou(context, String title) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          height: 170,
          width: MediaQuery.of(context).size.width / 2.26,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 85,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/taylor.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 85,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/michael.jpeg"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          height: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/drake.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          height: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/mano.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.26,
                    height: 85,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.music_note,
                              color: Colors.white,
                            ),
                            Text(
                              "3,006 Tracks",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}
