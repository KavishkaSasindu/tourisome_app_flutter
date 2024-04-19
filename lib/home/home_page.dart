import "package:flutter/material.dart";
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Awesome",
                      style: TextStyle(color: mainTextColor, fontSize: 20),
                    ),
                    const Text(
                      "Places",
                      style: TextStyle(
                          color: mainPurpleColor,
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: mainPurpleColor,
                      borderRadius: BorderRadius.circular(100)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
