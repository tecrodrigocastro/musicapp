import 'package:flutter/material.dart';
import 'package:orbe_music/utils/color.dart';
import 'package:orbe_music/widgets/nav_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      bottomNavigationBar: Container(
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildNavNarItem(
                context,
                "Home",
                Icon(
                  Icons.home,
                  color: secondaryColor,
                ),
                0),
            buildNavNarItem(
                context,
                "Search",
                Icon(
                  Icons.search,
                  color: secondaryColor,
                ),
                1),
            buildNavNarItem(
                context,
                "Library",
                Icon(
                  Icons.library_music,
                  color: secondaryColor,
                ),
                2),
            buildNavNarItem(
                context,
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
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Icon(
                    Icons.mic_none,
                    color: Colors.orange,
                    size: 50,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Find Song",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Your top genres",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
