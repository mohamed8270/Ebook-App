import 'package:ebookapp/homepage.dart';
import 'package:ebookapp/screens/bookmark.dart';
import 'package:ebookapp/screens/profile.dart';
import 'package:ebookapp/screens/searchscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'color.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    Search(),
    BookMark(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: KFourthColor.withOpacity(0.4),
          selectedItemColor: KFourthColor,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: KFourthColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: KFourthColor,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/bookmark.svg',
                color: KFourthColor,
              ),
              label: 'Bookmarks',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/profile.svg',
                color: KFourthColor,
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}
