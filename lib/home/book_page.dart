import "package:flutter/material.dart";
import "package:tourism_app/utils/color.dart";

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
    );
  }
}
