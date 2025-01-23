import 'package:flutter/material.dart';

class DateItemDay extends StatelessWidget {
  const DateItemDay({
    super.key,
    required this.day,
    required this.date,
  });

  final String day, date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey.withValues(
          alpha: 0.2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}