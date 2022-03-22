import 'package:flutter/material.dart';
import 'package:orbe_music/screens/home_page.dart';
import 'package:orbe_music/utils/color.dart';
import 'package:orbe_music/widgets/list_tracks_library.dart';
import 'package:orbe_music/widgets/nav_bar.dart';
import 'package:orbe_music/widgets/top_menu_library.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 18, right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                "Cancel",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
        title: Text(
          "Sistem of the down",
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                topMenuLibrary(context, "Tracks"),
                topMenuLibrary(context, "Albums"),
                topMenuLibrary(context, "Playlists"),
              ],
            ),
            SizedBox(height: 10),
            const Text(
              "Tracks",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            listTracks("images/system-of-a-down.jpg"),
            SizedBox(height: 10),
            listTracks("images/system.jpg"),
            SizedBox(height: 10),
            listTracks("images/system2.jpg"),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "View all",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            const Text(
              "Playlist",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            listTracks("images/system-of-a-down.jpg"),
            SizedBox(height: 10),
            listTracks("images/system.jpg"),
            SizedBox(height: 10),
            listTracks("images/system2.jpg"),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "View all",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
