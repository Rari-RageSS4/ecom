import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2,
          width: 75,
          color: Colors.grey[300],
        ),
        const SizedBox(
          width: 20,
        ),
        const Text("23 Mar 2024"),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 2,
          width: 75,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}
