import "package:flutter/material.dart";
import "package:tourism_app/home/land_marks.dart";
import "package:tourism_app/home/natural_wonders.dart";
import "package:tourism_app/home/night_life.dart";
import "package:tourism_app/widgets/app_bar.dart";
import "package:tourism_app/reusable/home_page/category_card.dart";
import "package:tourism_app/utils/color.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const AppBarNot(),
              const Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                "assets/main.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Select a Place From the Categories",
                style: TextStyle(
                    color: mainPurpleColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: const CategoryCard(
                      cardColor: mainCardBlue,
                      categoryTitle: "Natural Wonders",
                      cardWidth: 190,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NaturalWonders()));
                    },
                  ),
                  GestureDetector(
                    child: const CategoryCard(
                        cardColor: mainCardBlue,
                        categoryTitle: "NightLife",
                        cardWidth: 190),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NightLife()));
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GestureDetector(
                    child: const CategoryCard(
                        cardColor: mainLightBlue,
                        categoryTitle: "LandMarks",
                        cardWidth: 190),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LandMarks()));
                    },
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
