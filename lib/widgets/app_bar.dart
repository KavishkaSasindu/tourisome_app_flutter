import 'package:flutter/material.dart';
import 'package:tourism_app/utils/color.dart';

class AppBarNot extends StatelessWidget {
  const AppBarNot({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Awesome",
              style: TextStyle(color: mainTextColor, fontSize: 20),
            ),
            const Text(
              "Places",
              style: TextStyle(
                  color: mainPurpleColor,
                  fontSize: 48,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: mainPurpleColor, borderRadius: BorderRadius.circular(100)),
        )
      ],
    );
  }
}
