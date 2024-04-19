import 'package:flutter/material.dart';
import 'package:tourism_app/utils/color.dart';

class NatureCard extends StatelessWidget {
  const NatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nature Wonders Place-1",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: darkGreen),
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          "assets/nature1.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
          style: TextStyle(color: mainTextColor),
        )
      ],
    );
  }
}
