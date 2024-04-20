import "package:flutter/material.dart";
import "package:tourism_app/reusable/nature_card.dart";
import "package:tourism_app/utils/color.dart";

class NightLife extends StatelessWidget {
  const NightLife({super.key});

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
          "NightLife",
          style: TextStyle(
              color: lightBrown, fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              SizedBox(
                height: 10,
              ),
              NatureCard(
                natureTitle: "Nightlife Place-1",
                natureDescription:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                natureImage: "night1.jpg",
                isBorderRounded: true,
                titleColor: lightBrown,
              ),
              SizedBox(
                height: 10,
              ),
              NatureCard(
                natureTitle: "Nightlife Place-2",
                natureDescription:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                natureImage: "night2.jpg",
                isBorderRounded: true,
                titleColor: lightBrown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
