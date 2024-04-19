import "package:flutter/material.dart";
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
        title: Text(
          "Natural Wonders",
          style: TextStyle(
              color: darkGreen, fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
