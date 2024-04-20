import 'package:flutter/material.dart';
import 'package:tourism_app/utils/color.dart';

class LandMarksCard extends StatelessWidget {
  final String cardTitle;
  final String imageName;
  final String description;
  const LandMarksCard(
      {super.key,
      required this.cardTitle,
      required this.imageName,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Landmarks Place -1",
                style: TextStyle(
                    color: mainCardBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/$imageName",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(fontSize: 15, color: mainTextColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
