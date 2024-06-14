import 'package:ecom/presentation/styles/colors/text_gradient.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionContainer extends StatelessWidget {
  const SubscriptionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF200122), Color(0xFF6F0000)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          // text
          GradientText(
            text: 'Gold',
            gradient: const LinearGradient(
              colors: [
                Color(0xFFBA973B),
                Color(0xFFA57D24),
                Color(0xFFF1DD80),
                Color(0xFFF1DD80),
                Color(0xFFD9BF63),
                Color(0xFFC2A247),
                Color(0xFFB28D33),
                Color(0xFFA88128),
                Color(0xFFA57D24),
              ],
              stops: [
                -0.0901,
                0.0542,
                0.2225,
                0.3548,
                0.475,
                0.6313,
                0.7876,
                0.9319,
                1.0762,
              ],
              transform:
                  GradientRotation(90 * 3.14159 / 180), // 90 degrees in radians
            ),
            style: GoogleFonts.theNautigal(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 24),

          // price container
          Container(
            padding: const EdgeInsets.all(1.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFBA973B),
                  Color(0xFFF1DD80),
                  Color(0xFFF1DD80),
                  Color(0xFFA57D24)
                ],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(colors: [
                  Color(0xFF200122),
                  Color(0xFF6F0000),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              ),
              child: Column(
                children: [
                  Text(
                    '₹799',
                    style: GoogleFonts.urbanist(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '05 Jan to 20 Jan 2024',
                    style:
                        GoogleFonts.urbanist(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          // save amount container
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF3F0531),
                  Color(0xFF5E0C3D),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Saved amount',
                    style: GoogleFonts.urbanist(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFF320621)),
                    child: Text(
                      '₹200',
                      style: GoogleFonts.urbanist(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),
          // view less clickable,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              gradientLine(),
              const Text(
                'View less',
                style: TextStyle(color: Colors.white),
              ),
              gradientLine(
                  end: Alignment.centerLeft, beginAlign: Alignment.centerRight),
            ],
          )
        ],
      ),
    );
  }

   Container gradientLine(
      {beginAlign = Alignment.centerLeft, end = Alignment.centerRight}) {
    return Container(
      height: 1,
      width: 93,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: const [
          Color(0xFF29384B),
          Color(0xFF979EA8),
          Color(0xFFFFFFFF),
        ], begin: beginAlign, end: end),
      ),
    );
  }
}
