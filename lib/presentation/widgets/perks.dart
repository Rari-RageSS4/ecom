import 'package:ecom/presentation/styles/colors/text_gradient.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Perks extends StatelessWidget {
  const Perks({
    super.key,
    required this.bgGradient,
    required this.title,
    required this.titleGradient,
    required this.btnGradient,
    required this.borderGradient,
    required this.containerBgGradient,
    required this.price,
    required this.btnTextColor,
  });
  final LinearGradient bgGradient;
  final String title;
  final LinearGradient titleGradient;
  final LinearGradient btnGradient;
  final LinearGradient borderGradient;
  final LinearGradient containerBgGradient;
  final String price;
  final Color btnTextColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: bgGradient,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            // text
            GradientText(
              text: title,
              gradient: titleGradient,
              style: GoogleFonts.theNautigal(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            // price container
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: borderGradient,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28, vertical: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: containerBgGradient,
                      ),
                      child: Column(
                        children: [
                          Text(
                            '15',
                            style: GoogleFonts.urbanist(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Total days',
                            style: GoogleFonts.urbanist(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )),
                Container(
                    padding: const EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: borderGradient,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28, vertical: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: containerBgGradient,
                      ),
                      child: Column(
                        children: [
                          Text(
                            '15',
                            style: GoogleFonts.urbanist(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Total days',
                            style: GoogleFonts.urbanist(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 30),

            // percentage
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: containerBgGradient,
                  ),
                  child: Image.asset('assets/percentage.png'),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  '20-70% offer on normal orders',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),

            const SizedBox(
              height: 14,
            ),

            // delivery
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: containerBgGradient,
                  ),
                  child: Image.asset(
                    'assets/delivery.png',
                    height: 24,
                    width: 24,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'Free Home Delivery',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),

            const SizedBox(
              height: 36,
            ),

            // save amount container
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                gradient: btnGradient,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Text(
                    'Buy $title at $price/-',
                    style: GoogleFonts.urbanist(
                        color: btnTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
