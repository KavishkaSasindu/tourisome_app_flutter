import 'package:flutter/material.dart';
import 'package:tourism_app/utils/color.dart';

class ButtonBox extends StatelessWidget {
  final String buttonValue;
  const ButtonBox({super.key, required this.buttonValue});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: mainYellowColor),
      child: Text(
        buttonValue,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
