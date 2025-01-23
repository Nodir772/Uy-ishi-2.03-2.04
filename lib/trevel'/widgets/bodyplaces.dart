import 'package:flutter/material.dart';


class BodyItemPicture extends StatelessWidget {
  const BodyItemPicture({super.key, required this.image, required this.title});
  final String image , title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7),
          width: 104,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            left: 34,
            child: Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),))
      ],
    );
  }
}