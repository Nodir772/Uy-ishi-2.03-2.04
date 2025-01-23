import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/doimiy.dart';
import 'travelhomepage.dart';
import 'trevelcontext.dart';


class TariffsItem extends StatelessWidget {
  const TariffsItem({
    super.key,
    required this.tariff,
    required this.price,
    required this.oldPrice,
    required this.text,
    required this.FirstComposition,
    required this.SecondComposition,
  });

  final String tariff,
      price,
      oldPrice,
      text,
      FirstComposition,
      SecondComposition;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            width: 127,
            height: 90,
            decoration: BoxDecoration(
              color: AppColors.TextGreen,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      oldPrice,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 9,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.white,
                      ),
                    ),
                  ],
                ),

                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 7,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 2),
                TravelComposition(text: FirstComposition),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TravelComposition(
                      text: SecondComposition,
                    ),
                    OpenMoreItem(text: "6 +"),
                  ],
                ),
                SizedBox(height: 10),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 50,
                      height: 2,
                      color: Colors.white,
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: -7,
                      child: Center(
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: AppColors.BorderColor,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: SvgPicture.asset(
                              "asset/icons/down-arrow.svg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: -13,
            right: 29,
            child: Container(
              width: 65,
              height: 19,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: AppColors.BorderColor,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(
                tariff,
                style: TextStyle(
                  color: AppColors.TextGreen,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}