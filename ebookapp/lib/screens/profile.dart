import 'package:ebookapp/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: SafeArea(
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: KFourthColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 70),
        SettingsMenu(
          svg: 'assets/icons/settings.svg',
          text1: 'Profile Settings',
        ),
        SizedBox(height: 20),
        SettingsMenu(
          svg: 'assets/icons/notification.svg',
          text1: 'Notification',
        ),
        SizedBox(height: 20),
        SettingsMenu(
          svg: 'assets/icons/security.svg',
          text1: 'Privacy & Security',
        )
      ],
    ));
  }
}

class SettingsMenu extends StatelessWidget {
  const SettingsMenu({
    Key? key,
    required this.svg,
    required this.text1,
  }) : super(key: key);
  final String svg;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        color: KPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            SvgPicture.asset(
              svg,
              color: KFifthColor,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(width: 20),
            Text(
              text1,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: KFifthColor.withOpacity(0.6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
