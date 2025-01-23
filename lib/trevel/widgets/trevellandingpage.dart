import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PackageImageItem extends StatelessWidget {
  const PackageImageItem({
    super.key,
    required this.image,
    required this.common_day,
    required this.flight_text,
    required this.landing_text,
  });

  final String image, common_day, flight_text, landing_text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Image(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.fill,
                width: 361,
                height: 200,
              ),
              Positioned(
                right: 21,
                top: 21,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  alignment: Alignment.center,
                  child: SvgPicture.asset("assets/icons/heart.svg"),
                ),
              ),
              Positioned(
                left: 17,
                top: 23,
                child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                  width: 59,
                  height: 21,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      flight_text,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                right: 30,
                bottom: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/icons/flight.svg"),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4,
                        // vertical: 1,
                      ),
                      width: 80,
                      height: 21,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        flight_text,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/landing.svg"),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4,
                        // vertical: 1,
                      ),
                      width: 80,
                      height: 21,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        landing_text,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}