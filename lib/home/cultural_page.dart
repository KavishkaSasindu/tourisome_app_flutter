import "package:flutter/material.dart";
import "package:tourism_app/utils/color.dart";

class CulturalPage extends StatelessWidget {
  const CulturalPage({super.key});

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
          "Cultural",
          style: TextStyle(
              color: textRed, fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
