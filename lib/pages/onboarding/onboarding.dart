import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  final int currentIndex;
  const Onboarding({super.key, required this.currentIndex,});

  List<String> get images => [
    'assets/cart.png',
    'assets/bag.png',
    'assets/shop.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7265E2),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                    color: Colors.transparent,
                  ),
                ],
              ),
              child: Image.asset(
                'assets/cloud3.png',
                height: 300,
                width: Get.width,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset(
                      images[currentIndex],
                      height: 300,
                      width: Get.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Text(
                    'Behavioral Health Service',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Transforming lives by offering hope and opportunities for recovery, wellness, and independence.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/cloud3.png',
                height: 300,
                width: Get.width,
                fit: BoxFit.cover,
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
