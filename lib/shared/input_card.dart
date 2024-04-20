import 'package:flutter/material.dart';

class InputBoxField extends StatelessWidget {
  const InputBoxField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Enter Here",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: const EdgeInsetsDirectional.symmetric(
              horizontal: 30, vertical: 15)),
    );
  }
}
