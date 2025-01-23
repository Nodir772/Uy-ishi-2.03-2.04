import 'package:flutter/material.dart';

class ItemCount extends StatelessWidget {
  const ItemCount({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.cover,
        width: 400,
        height: 120,
        color: Colors.black.withValues(alpha: 0.35),
        colorBlendMode: BlendMode.difference,
      ),
    );
  }
}