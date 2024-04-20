import 'package:flutter/material.dart';
import 'package:tourism_app/utils/color.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xffCACACA).withOpacity(0.30)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.star,
            size: 35,
            color: mainYellowColor,
          ),
          Icon(
            Icons.star,
            size: 35,
            color: mainYellowColor,
          ),
          Icon(
            Icons.star,
            size: 35,
            color: mainYellowColor,
          ),
          Icon(
            Icons.star,
            size: 35,
            color: mainYellowColor,
          ),
          Icon(
            Icons.star,
            size: 35,
            color: mainYellowColor,
          ),
        ],
      ),
    );
  }
}
