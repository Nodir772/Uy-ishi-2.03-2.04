import 'package:flutter/material.dart';
import '../../utils/doimiy.dart';
import 'tariftext.dart';

class TariffDetailItem extends StatelessWidget {
  const TariffDetailItem({
    super.key,
    required this.tariffs,
    required this.price,
    required this.OldPrice,
    required this.plane,
    required this.bus,
    required this.medical,
    required this.leaders,
  });

  final String price, OldPrice, plane, bus, medical, leaders,tariffs;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          width: 189,
          height: 263,
          decoration: BoxDecoration(
            color: AppColors.TexTColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 3,
              color: AppColors.YellowBorder,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        OldPrice,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.5),
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.white.withValues(
                            alpha: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Afzalliklari",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              TariffsTextItem(
                svg: "assets/icons/plane.svg",
                text: plane,
              ),
              TariffsTextItem(
                svg: "assets/icons/bus.svg",
                text: bus,
              ),
              TariffsTextItem(
                svg: "assets/icons/medical.svg",
                text: medical,
              ),
              TariffsTextItem(
                svg: "assets/icons/people.svg",
                text: leaders,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus fugit, iste unde voluptatem tempore vero eveniet quia conseq  ",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -14.5,
          left: 51.5,
          child: Container(
            width: 86,
            height: 29,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: AppColors.TextGreen,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Text(
              tariffs,
              style: TextStyle(
                color: AppColors.TextGreen,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Positioned(
          top: 2,
          left: 2,
          child: Container(
            width: 26,
            height: 22,
            decoration: BoxDecoration(
              color: AppColors.YellowBorder,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              "20%",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}