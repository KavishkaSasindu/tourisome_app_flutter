import "package:flutter/material.dart";
import "package:tourism_app/reusable/book_page/book_card.dart";
import "package:tourism_app/utils/color.dart";
import "package:tourism_app/widgets/book_page/place_card.dart";

class BookTour extends StatelessWidget {
  const BookTour({super.key});

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
          "Lets Book A Tour!",
          style: TextStyle(
              color: mainPurpleColor,
              fontSize: 32,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              SizedBox(
                height: 10,
              ),
              Text(
                "Select a Vehicle",
                style: TextStyle(
                    color: mainPurpleColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BookCard(
                    vehicleName: "Car",
                    imageName: "Mask group.png",
                  ),
                  BookCard(
                    vehicleName: "Bike",
                    imageName: "Mask group-1.png",
                  ),
                  BookCard(
                    vehicleName: "Bus",
                    imageName: "Mask group-2.png",
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Selected Place",
                style: TextStyle(
                    color: mainPurpleColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              PlaceCard(),
            ],
          ),
        ),
      ),
    );
  }
}
