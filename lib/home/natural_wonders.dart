import "package:flutter/material.dart";
import "package:tourism_app/reusable/nature_page/nature_card.dart";
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
      body: Padding(
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
            const NatureCard(),
          ],
        ),
      ),
    );
  }
}
