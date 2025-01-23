import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavBarSvg(svg: "home.svg", title: "Home"),
          BottomNavBarSvg(svg: "cart.svg", title: "Cart"),
          BottomNavBarSvg(svg: "orders.svg", title: "Orders"),
          BottomNavBarSvg(svg: "wallet.svg", title: "Wallet"),
          BottomNavBarSvg(svg: "profile.svg", title: "Profile"),

        ],
      ),
    );
  }
}

class BottomNavBarSvg extends StatelessWidget {
  const BottomNavBarSvg({super.key, required this.svg, required this.title});
  final String svg, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("assets/icons/$svg"),
        Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        )
      ],
    );
  }
}