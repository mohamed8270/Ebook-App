import 'package:ebookapp/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 20),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: KPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: SvgPicture.asset(
                        'assets/icons/search.svg',
                        color: KFourthColor,
                        fit: BoxFit.scaleDown,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: KFourthColor,
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  'Top Book Search',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: KFourthColor,
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        TopSearch(
                          image: 'assets/english/bts.jpg',
                          text1: 'BTS',
                          text2: 'BTS Army',
                        ),
                        TopSearch(
                          image: 'assets/english/slauter.jpg',
                          text1: 'Slaughter',
                          text2: 'Ryan North',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TopSearch(
                          image: 'assets/english/heart.jpg',
                          text1: 'Happiness',
                          text2: 'Dalai Lama',
                        ),
                        TopSearch(
                          image: 'assets/english/smarter.jpg',
                          text1: 'Habit',
                          text2: 'Charles',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TopSearch(
                          image: 'assets/images/mom.jpg',
                          text1: 'Amma',
                          text2: 'Janagi Raman',
                        ),
                        TopSearch(
                          image: 'assets/images/raja.jpg',
                          text1: 'Cholan',
                          text2: 'Kannan',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TopSearch(
                          image: 'assets/images/thippu.jpg',
                          text1: 'Sulthan',
                          text2: 'Arshiya',
                        ),
                        TopSearch(
                          image: 'assets/images/vekkai.jpg',
                          text1: 'Vekkai',
                          text2: 'Poomani',
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class TopSearch extends StatelessWidget {
  const TopSearch({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 80,
        width: 180,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: KFourthColor,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      fontSize: 16,
                      color: KFifthColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: KFifthColor.withOpacity(0.7),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
