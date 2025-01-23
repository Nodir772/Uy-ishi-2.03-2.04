import 'package:flutter/material.dart';

import '../../utils/doimiy.dart';

class HomeTextItem extends StatelessWidget {
  const HomeTextItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: AppColors.TexTColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),);
  }
}