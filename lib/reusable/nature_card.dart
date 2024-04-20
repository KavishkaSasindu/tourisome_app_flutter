import 'package:flutter/material.dart';
import 'package:tourism_app/utils/color.dart';

class NatureCard extends StatelessWidget {
  final String natureTitle;
  final String natureDescription;
  final String natureImage;
  final Color titleColor;
  final bool isBorderRounded;
  const NatureCard(
      {super.key,
      required this.natureTitle,
      required this.natureDescription,
      required this.natureImage,
      required this.isBorderRounded,
      required this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          natureTitle,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: titleColor),
        ),
        const SizedBox(
          height: 10,
        ),
        isBorderRounded
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/$natureImage",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                "assets/$natureImage",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
        const SizedBox(
          height: 10,
        ),
        Text(
          natureDescription,
          style: TextStyle(color: mainTextColor),
        )
      ],
    );
  }
}
