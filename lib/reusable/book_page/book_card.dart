import 'package:flutter/material.dart';
import 'package:tourism_app/utils/color.dart';

class BookCard extends StatelessWidget {
  final String vehicleName;
  final String imageName;
  const BookCard(
      {super.key, required this.vehicleName, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/$imageName",
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            vehicleName,
            style: const TextStyle(
                color: mainLightBlue,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}
