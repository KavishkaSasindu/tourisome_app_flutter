import "package:flutter/material.dart";
import "package:tourism_app/reusable/book_page/book_card.dart";
import "package:tourism_app/shared/button.dart";
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Select a Vehicle",
                style: TextStyle(
                    color: mainPurpleColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Selected Place",
                style: TextStyle(
                    color: mainPurpleColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              PlaceCard(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Fill The Details",
                style: TextStyle(
                    fontSize: 20,
                    color: mainPurpleColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "User Name",
                style: TextStyle(color: Color(0xff6E7A76), fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    hintText: "John...",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintStyle: const TextStyle(color: Color(0xff6E7A76))),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Country",
                style: TextStyle(color: Color(0xff6E7A76), fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    hintText: "Canada...",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintStyle: const TextStyle(color: Color(0xff6E7A76))),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 2,
                decoration: BoxDecoration(color: mainTextColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    color: mainTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [ButtonBox(buttonValue: "Submit")],
              )
            ],
          ),
        ),
      ),
    );
  }
}
