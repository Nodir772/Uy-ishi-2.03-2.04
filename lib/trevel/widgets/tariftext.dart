import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TariffsTextItem extends StatelessWidget {
  const TariffsTextItem({super.key,required this.svg,required this.text});
  final String svg,text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: SvgPicture.asset(svg),
          width: 14,
          height: 13,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}