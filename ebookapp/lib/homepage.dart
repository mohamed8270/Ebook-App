import 'package:flutter/material.dart';
import 'banner.dart';
import 'category.dart';
import 'itemcards.dart';
import 'trends.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    queryData.devicePixelRatio;
    queryData.size.width;
    queryData.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            BannerSection(),
            SizedBox(height: 5),
            CategoryCard(),
            SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/images/mom.jpg',
                      text1: 'Amma Vanthaal',
                      text2: 'Janaki Raman',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/images/thippu.jpg',
                      text1: 'Thippu Sulthaan',
                      text2: 'Arshiya',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/images/kural.jpeg',
                      text1: 'Thiruvalluvar',
                      text2: 'Gauthama Sanna',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/images/ponniyin.jpg',
                      text1: 'Ponniyin Selvan',
                      text2: 'Kalki',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/images/raja.jpg',
                      text1: 'Raja Raja Cholan',
                      text2: 'Kannan',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/images/richdad.jpg',
                      text1: 'Rich Dad poor Dad',
                      text2: 'Robert',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/images/vekkai.jpg',
                      text1: 'Vekkai',
                      text2: 'Poomani',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/images/wings.jpg',
                      text1: 'Wings of Fire',
                      text2: 'Dr. Kalam',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/images/money.jpg',
                      text1: 'Physiology of money',
                      text2: 'Morgan',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Trends(),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/english/bts.jpg',
                      text1: 'BTS Army',
                      text2: 'Bts',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/english/slauter.jpg',
                      text1: 'Slaughter',
                      text2: 'Ryan & Albert',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/english/heart.jpg',
                      text1: 'Heart of Happiness',
                      text2: 'Dalai Lama',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/english/smarter.jpg',
                      text1: 'The Power of Habit',
                      text2: 'Charles Duhigg',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/english/magic.jpg',
                      text1: 'Magic of Thinking',
                      text2: 'Mark Swartz',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ItemCards(
                      imagepic: 'assets/english/subtle.jpg',
                      text1: 'The Subtle Art',
                      text2: 'Mark Manson',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
