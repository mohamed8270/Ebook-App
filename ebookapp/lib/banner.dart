import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'color.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var timeNow = int.parse(DateFormat('kk').format(now));
    var message = '';
    if (timeNow <= 12) {
      message = 'Good Morning!';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      message = 'Good Afternoon!';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      message = 'Good Evening!';
    } else {
      message = 'Warm Night! ';
    }

    return Align(
      alignment: Alignment.center,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 260,
                width: 370,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bookfly.jpg'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                      KFourthColor.withOpacity(0.85),
                      BlendMode.srcATop,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Text(
                        message,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: KPrimaryColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Which book suits your\ncurrent mood?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: KPrimaryColor.withOpacity(0.7),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                child: Container(
                  height: 100,
                  width: 340,
                  decoration: BoxDecoration(
                    color: KPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: KFourthColor,
                            image: DecorationImage(
                              image: AssetImage('assets/images/kural.jpeg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 20),
                        child: Column(
                          children: [
                            Text(
                              'History of Thiruvalluvar',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: KFifthColor,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 30),
                              child: Text(
                                'Author: Gaunthama Sannu',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: KFifthColor.withOpacity(0.7),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
