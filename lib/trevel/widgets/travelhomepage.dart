import 'package:flutter/material.dart';
import '../../utils/doimiy.dart';
class OpenMoreItem extends StatelessWidget {
  const OpenMoreItem({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 33,
      height: 19,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: AppColors.TextGreen,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        // color: AppColors.GreenMain,
        width: 29,
        height: 15,
        decoration: BoxDecoration(
          color: AppColors.TextGreen,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.white),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}