import 'package:flutter/material.dart';
import 'package:orbe_music/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ORBE MUSIC',
      theme: ThemeData(
        fontFamily: 'Roboto'
      ),
      home: const HomePage(),
    );
  }
}
