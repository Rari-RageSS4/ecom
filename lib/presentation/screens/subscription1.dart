import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Subscription1 extends StatelessWidget {
  const Subscription1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [])),
        child: Column(
          children: [
            // text
            Text(
              "Gold",
              style: GoogleFonts.theNautigal(),
            ),

            // price container
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                //   border: Border.all(color: )
              ),
              height: 150,
              width: 300,
              child: const Column(
                children: [
                  Text(
                    '₹799',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '05 Jan to 20 Jan 2024',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            // save amount container
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: []),
                borderRadius: BorderRadius.circular(12),
              ),
              height: 90,
              width: 300,
              child: const Text(
                'Saved amount ₹193',
                style: TextStyle(color: Colors.white),
              ),
            ),

            // view less clickable,
            const Text(
              'View less',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
