import 'package:flutter/material.dart';
import 'package:orbe_music/utils/color.dart';
import 'package:orbe_music/widgets/favorite_artist.dart';
import 'package:orbe_music/widgets/last_play.dart';
import 'package:orbe_music/widgets/made_for_you.dart';
import 'package:orbe_music/widgets/nav_bar.dart';
import 'package:orbe_music/widgets/tips.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: const Text(
          "Music",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildNavNarItem(
                "Home",
                Icon(
                  Icons.home,
                  color: secondaryColor,
                ),
                0),
            buildNavNarItem(
                "Search",
                Icon(
                  Icons.search,
                  color: secondaryColor,
                ),
                1),
            buildNavNarItem(
                "Library",
                Icon(
                  Icons.library_music,
                  color: secondaryColor,
                ),
                2),
            buildNavNarItem(
                "Profile",
                Icon(
                  Icons.person,
                  color: secondaryColor,
                ),
                3),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Last play",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  lastPlay(
                      context,
                      "images/pop.jpg",
                      "images/rock.jpg",
                      "images/rap.jpg",
                      "Party hits",
                      "A mix of the biggest pop,dence, and hip hop..."),
                  SizedBox(
                    width: 10,
                  ),
                  lastPlay(
                      context,
                      "images/pop.jpg",
                      "images/rock.jpg",
                      "images/rap.jpg",
                      "Discover Weekly",
                      "Your weekly mixtape of fresh music.Enjoy ne..."),
                  SizedBox(
                    width: 10,
                  ),
                  lastPlay(
                      context,
                      "images/pop.jpg",
                      "images/rock.jpg",
                      "images/rap.jpg",
                      "Discover Weekly",
                      "Your weekly mixtape of fresh music.Enjoy ne..."),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            const Text(
              "Your favourit artists",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  favoriteArtist("images/drake.jpg"),
                  SizedBox(
                    width: 15,
                  ),
                  favoriteArtist("images/mano.jpg"),
                  SizedBox(
                    width: 15,
                  ),
                  favoriteArtist("images/taylor.jpg"),
                  SizedBox(
                    width: 15,
                  ),
                  favoriteArtist("images/michael.jpeg")
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            const Text(
              "Made for you",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                madeYou(context, "Hard Rock"),
                madeYou(context, "Hip Hop"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                madeYou(context, "Pop"),
                madeYou(context, "Classic"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            const Text(
              "Tips to get started",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tips(context, Colors.orange),
                  SizedBox(width: 10),
                  tips(context, Colors.blue),
                  SizedBox(width: 10),
                  tips(context, Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
