import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dataitem.dart';

class HomeDetailsItem extends StatelessWidget {
  const HomeDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 552,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.5),
                spreadRadius: 1,
                blurRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 9,
                  children: [
                    DateItemDay(day: "1", date: "14okt"),
                    DateItemDay(day: '2', date: '15okt'),
                    DateItemDay(day: '3', date: '16okt'),
                    DateItemDay(day: '4', date: '17okt'),
                    DateItemDay(day: '5', date: '18okt'),
                    DateItemDay(day: '6', date: '19okt'),
                    DateItemDay(day: '7', date: '20okt'),
                    DateItemDay(day: '8', date: '21okt'),
                    DateItemDay(day: '9', date: '22okt'),
                    DateItemDay(day: '10', date: '23okt'),
                    DateItemDay(day: '11', date: '24okt'),
                    DateItemDay(day: '12', date: '25okt'),
                    DateItemDay(day: '13', date: '26okt'),
                    DateItemDay(day: '14', date: '27okt'),
                    DateItemDay(day: '15', date: '28okt'),
                  ],
                ),
              ),
              SizedBox(height: 14),
              Container(
                width: 348,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 0.5),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 1,
                    height: 435,
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.2),
                    ),
                  ),
                  Column(
                    children: [
                      FirstDiaryItem(),
                      SizedBox(height: 15),
                      SecondDiaryItem(
                        where: 'Mehmonxona',
                        time: "11:30 am",
                        image: "asset/images/places/hotel.png",
                        description: "New Madina Hotel",
                      ),
                      SizedBox(height: 15),
                      SecondDiaryItem(
                        where: "Ziyoratgoh",
                        time: "8:30 am",
                        image: "asset/images/places/party.png",
                        description: "Arofat to’gi",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 112,
          left: 22,
          child: SvgPicture.asset("asset/icons/ContainerFly.svg"),
        ),
        Positioned(
          top: 248,
          left: 22,
          child: SvgPicture.asset("asset/icons/ContainerMehmonxona.svg"),
        ),
        Positioned(
          bottom: 92,
          left: 22,
          child: SvgPicture.asset("asset/icons/ContainerZiyorotgoh.svg"),
        ),
      ],
    );
  }
}

class SecondDiaryItem extends StatelessWidget {
  const SecondDiaryItem(
      {super.key,
        required this.where,
        required this.time,
        required this.image,
        required this.description});

  final String where, time, image, description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 37, top: 8, left: 52, bottom: 8),
      width: 284,
      height: 123,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              blurRadius: 3,
              blurStyle: BlurStyle.normal),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                where,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage(image),
                width: 77,
                height: 68,
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FirstDiaryItem extends StatelessWidget {
  const FirstDiaryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16, top: 22, left: 52, bottom: 31),
      width: 284,
      height: 123,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              blurRadius: 3,
              blurStyle: BlurStyle.normal),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Uchish",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              Text(
                "8:30 am",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Qayerdan",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Toshkent",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Qayerga",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Madina",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}