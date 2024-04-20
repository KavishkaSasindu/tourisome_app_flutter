import "package:flutter/material.dart";
import "package:tourism_app/reusable/nature_card.dart";
import "package:tourism_app/utils/color.dart";

class NaturalWonders extends StatelessWidget {
  const NaturalWonders({super.key});

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
          "Natural Wonders",
          style: TextStyle(
              color: lightGreen, fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: mainTextColor),
              ),
              const SizedBox(
                height: 10,
              ),
              const NatureCard(
                natureTitle: "Nature Wonders Place-1",
                natureImage: "nature1.png",
                natureDescription:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isBorderRounded: false,
                titleColor: lightGreen,
              ),
              const SizedBox(
                height: 10,
              ),
              const NatureCard(
                  natureTitle: "Nature Wonders Place-2",
                  natureDescription:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  isBorderRounded: false,
                  titleColor: lightGreen,
                  natureImage: "nature2.png"),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const NatureCard(
                  natureTitle: "Nature Wonders Place-3",
                  natureDescription:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  isBorderRounded: false,
                  titleColor: lightGreen,
                  natureImage: "nature3.png"),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
