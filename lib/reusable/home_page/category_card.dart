import 'package:flutter/material.dart';
import 'package:tourism_app/utils/color.dart';

class CategoryCard extends StatelessWidget {
  final Color cardColor;
  final String categoryTitle;
  final double cardWidth;
  const CategoryCard(
      {super.key,
      required this.cardColor,
      required this.categoryTitle,
      required this.cardWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: 100,
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(
          categoryTitle,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
