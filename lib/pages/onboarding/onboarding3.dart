import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

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
                      'assets/shop.png',
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
            //bottom
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                      padding: const EdgeInsets.all(16.0).copyWith(bottom: 25),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          
                          // icon
                          CircleAvatar(
                            child: Icon(Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          )
                        ],
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}