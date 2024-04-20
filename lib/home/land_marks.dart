import "package:flutter/material.dart";
import "package:tourism_app/reusable/land_marks/land_card.dart";
import "package:tourism_app/utils/color.dart";

class LandMarks extends StatelessWidget {
  const LandMarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "LandMarks",
          style: TextStyle(
              color: textBlue, fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: mainTextColor),
              ),
              const LandMarksCard(
                  cardTitle: "Landmarks Place 1",
                  imageName: "land1.png",
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const LandMarksCard(
                  cardTitle: "Landmarks Place 2",
                  imageName: "land2.png",
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.")
            ],
          ),
        ),
      ),
    );
  }
}
