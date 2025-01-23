import 'package:flutter/material.dart';
import '../../utils/doimiy.dart';
import 'hometext.dart';

class HomeDetailsTextItem extends StatelessWidget {
  const HomeDetailsTextItem(
      {super.key, required this.where, required this.info});

  final String where, info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      width: 398,
      height: 88,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeTextItem(title: where),
          Text(
            info,
            style: TextStyle(
              color: AppColors.TexTColor,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}