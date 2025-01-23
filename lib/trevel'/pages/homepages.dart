import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bodyplaces.dart';
import '../widgets/buttomnavigationbar.dart';
import '../widgets/hometext.dart';
import '../widgets/itemcount.dart';
import '../widgets/searchitem.dart';
import '../widgets/timemain.dart';
import '../widgets/trevelitemoage.dart';
class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomePage> {
  final List<String> images = [
    "asset/images/offers/offers_1.jpg",
    "asset/images/offers/offers_2.jpg",
    "asset/images/offers/offers_3.jpg",
    "asset/images/offers/offers_4.jpg",
    "asset/images/offers/offers_5.jpg",
    "asset/images/offers/offers_6.jpg",
    "asset/images/offers/offers_7.jpg",
    "asset/images/offers/offers_8.jpg",
    "asset/images/offers/offers_9.jpg",
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchItem(),
                SizedBox(height: 20),
                Container(
                  height: 120,
                  child: Stack(
                    children: [
                      PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        onPageChanged: (index) {
                          setState(() {
                            current = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return ItemCount(
                            image: images[index],
                          );
                        },
                      ),
                      Positioned(
                        bottom: 12,
                        right: 0,
                        left: 0,
                        child: Center(
                          child: Container(
                            width: 62,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                HomeTextItem(title: "Mashxur joylar"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BodyItemPicture(
                        image: "asset/images/places/paris.png",
                        title: "Parij",
                      ),
                      GestureDetector(
                        onTap: (){
                          context.go('/home/details');
                        },
                        child: BodyItemPicture(
                          image: "asset/images/places/makka.png",
                          title: "Makka",
                        ),
                      ),
                      BodyItemPicture(
                        image: "asset/images/places/malayziya.png",
                        title: "Malayzia",
                      ),
                      BodyItemPicture(
                        image: "asset/images/places/dubai.png",
                        title: "Dubai",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
          Container(
            width: 427,
            height: 634,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.amber,
                ],
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("asset/icons/discount.svg"),
                        SizedBox(width: 13),
                        Column(
                          children: [
                            Text(
                              "Shoshiling",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "20% gacha chegirma",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    TimeMainItem(),
                  ],
                ),
                SizedBox(height: 25),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 11),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 11,
                    children: [
                      TourPackageItem(),
                      TourPackageItem(),
                      TourPackageItem(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 50),
              child: TourPackageItem(),
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavBarItem(),
    );
  }
}