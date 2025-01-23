import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/doimiy.dart';
import 'hometext.dart';
import 'travelhomepage.dart';
import 'trevelcontext.dart';
import 'trevelitembeen.dart';
import 'trevellandingpage.dart';
import 'treveltariflaripages.dart';



class TourPackageItem extends StatelessWidget {
  const TourPackageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 9, vertical: 7),
        width: 302,
        height: 529,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.GrayBorder,
            width: 2,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PackageImageItem(
              image: "assets/images/places/makka.png",
              common_day: "14 kun",
              flight_text: "14 Oktabr",
              landing_text: "27 Oktabr",
            ),
            HomeTextItem(title: "Umra Safari"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TravelDayItem_widget(
                  day: "10",
                  text: "KUN",
                  where: "Madinada",
                ),
                SizedBox(width: 10),
                TravelDayItem_widget(
                  day: "5",
                  text: "KUN",
                  where: "Makkada",
                ),
              ],
            ),
            HomeTextItem(title: "Sayohat tarkibi"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TravelComposition(text: "Sug'urta"),
                // SizedBox(width: 3),
                TravelComposition(text: "Chipta"),
                // SizedBox(width: 3),
                TravelComposition(text: "Aviachipta"),
                // SizedBox(width: 3),
                TravelComposition(text: "Viza"),
                OpenMoreItem(text: "6 +"),
                // SizedBox(width: 3),
              ],
            ),
            HomeTextItem(title: "Tariflar"),
            SizedBox(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TariffsItem(
                      tariff: "Ekonom",
                      price: "1200＄",
                      oldPrice: "1300＄",
                      text: "Afzalliklari",
                      FirstComposition: "Transport Xizmati",
                      SecondComposition: "Nonushta",
                    ),
                    SizedBox(width: 25),
                    TariffsItem(
                      tariff: "Standart",
                      price: "1400\$",
                      oldPrice: "1600\$",
                      text: "Afzalliklari",
                      FirstComposition: "Transport Xizmati",
                      SecondComposition: "Nonushta",
                    ),
                    SizedBox(width: 25),
                    TariffsItem(
                      tariff: "Premium",
                      price: "1800\$",
                      oldPrice: "2000",
                      text: "Afzalliklari",
                      FirstComposition: "Transport Xizmati",
                      SecondComposition: "Nonushta",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 362,
              height: 4,
              color: Colors.grey.withValues(alpha: 0.5),
            ),
            SizedBox(height: 8),
            Container(
              width: 274,
              height: 30,
              decoration: BoxDecoration(
                color: AppColors.TextGreen,
                borderRadius: BorderRadius.circular(100),
              ),
              alignment: Alignment.center,
              child: Text(
                "Batafsil...",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}