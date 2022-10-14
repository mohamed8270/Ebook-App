import 'package:ebookapp/bottomnav.dart';
import 'package:ebookapp/color.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

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
      title: 'ebook app',
      theme: ThemeData(
        fontFamily: 'Poppins',
        backgroundColor: KPrimaryColor,
      ),
      home: const BottomNavBar(),
    );
  }
}
