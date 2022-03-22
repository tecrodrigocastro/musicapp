import 'package:flutter/material.dart';
import 'package:orbe_music/screens/home_page.dart';
import 'package:orbe_music/utils/color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, size: 30)),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: secondaryColor,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/michael.jpeg"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Michael Jackson",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(25),
                border: Border(),
              ),
              child: Text(
                "Editar Perfil",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
