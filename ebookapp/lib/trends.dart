import 'package:flutter/material.dart';

import 'color.dart';

class Trends extends StatelessWidget {
  const Trends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 110,
              decoration: BoxDecoration(
                color: KFourthColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Top Trends',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: KPrimaryColor,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 200),
          child: Text(
            'See all',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: KFifthColor,
            ),
          ),
        )
      ],
    );
  }
}
