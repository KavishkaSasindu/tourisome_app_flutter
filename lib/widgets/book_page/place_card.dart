import 'package:flutter/material.dart';
import 'package:tourism_app/shared/rating_card.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            "https://imgs.search.brave.com/3COsWuSnkNcZv2hfxlEKHDTNqz7eiwPJDU8ve_Iv5l8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudHJhdmVsYW5k/bGVpc3VyZWFzaWEu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy9z/aXRlcy8yLzIwMjMv/MTEvMjIxMjMwMzkv/c2lnaXJpeWEuanBl/Zw",
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff000000).withOpacity(0.57)),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selected Place",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              RatingCard(),
            ],
          ),
        )
      ],
    );
  }
}
