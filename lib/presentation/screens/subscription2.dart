import 'package:ecom/presentation/widgets/perks.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subscription2 extends StatelessWidget {
  const Subscription2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ai

            // gold
            const Perks(
              bgGradient: LinearGradient(
                colors: [Color(0xFF200122), Color(0xFF6F0000)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              title: 'Gold',
              titleGradient: LinearGradient(
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
              ),
              btnGradient: LinearGradient(
                colors: [
                  Color(0xFFBA993E),
                  Color(0xFFE1C86D),
                  Color(0xFFBA993E),
                ],
              ),
              borderGradient: LinearGradient(
                colors: [
                  Color(0xFFBA973B),
                  Color(0xFFF1DD80),
                  Color(0xFFF1DD80),
                  Color(0xFFA57D24)
                ],
              ),
              containerBgGradient: LinearGradient(
                colors: [Color(0xFF590009), Color(0xFF4d010f)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              price: '1300',
              btnTextColor: Colors.white,
            ),

            // silver
            const Perks(
              bgGradient: LinearGradient(
                colors: [Color(0xFF113264), Color(0xFF070326)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              title: 'Silver',
              titleGradient: LinearGradient(colors: [
                Color(0xFF4D4D4D),
                Color(0xFFD8D8D8),
                Color(0xFFFFFFFF),
                Color(0xFFD8D8D8),
                Color(0xFF4D4D4D),
              ]),
              btnGradient: LinearGradient(
                colors: [
                  Color(0xFF4D4D4D),
                  Color(0xFFD8D8D8),
                  Color(0xFFFFFFFF),
                  Color(0xFFD8D8D8),
                  Color(0xFF4D4D4D),
                ],
              ),
              borderGradient: LinearGradient(
                colors: [
                  Color(0xFF4D4D4D),
                  Color(0xFFD8D8D8),
                  Color(0xFFFFFFFF),
                  Color(0xFFD8D8D8),
                  Color(0xFF4D4D4D),
                ],
              ),
              containerBgGradient: LinearGradient(
                colors: [Color(0xFF0f2a59), Color(0xFF0d1f4b)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              price: '800',
              btnTextColor: Color(0xFF5B5B5B),
            ),

            // bronze
            const Perks(bgGradient: LinearGradient(
              colors: [Color(0xFF6b4001), Color(0xFF321a05)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ), title: 'Bronze', titleGradient: LinearGradient(
                colors: [                  
                  Colors.white,
                  Colors.white,
                ]), btnGradient: LinearGradient(
                  colors: [
                    Color(0xFF3B2708),
                    Color(0xFF62410D),
                    Color(0xFFA16A15),
                    Color(0xFF64420D),
                    Color(0xFF3B2708),
                  ],
                ), borderGradient: LinearGradient(
                        colors: [
                          
                          Color(0xFF62410D),
                          Color(0xFFA16A15),
                          Color(0xFF64420D),
                          
                        ],
                      ), containerBgGradient: LinearGradient(
                          colors: [Color(0xFF6e4200), Color(0xFF6b3f03)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ), price: '300', btnTextColor: Colors.white,),

            // perks

            const SizedBox(height: 46,),

            // FAQ's
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'FAQ\'s',
                style: GoogleFonts.urbanist(
                  color: const Color(
                    0xFF9F290F,
                  ),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            const SizedBox(height: 20,),

            const ExpansionTile(
              title: Text('What all charges will be covered under free delivery?'),
              children: [
                Text('All charges will be covered under free delivery...'),
              ],
            ),
            const ExpansionTile(
              title: Text('What all charges will be covered under free delivery?'),
              children: [
                Text('All charges will be covered under free delivery...'),
              ],
            ),
            const ExpansionTile(
              title: Text('What all charges will be covered under free delivery?'),
              children: [
                Text('All charges will be covered under free delivery...'),
              ],
            ),
            const ExpansionTile(
              title: Text('What all charges will be covered under free delivery?'),
              children: [
                Text('All charges will be covered under free delivery...'),
              ],
            ),
            const ExpansionTile(
              title: Text('What all charges will be covered under free delivery?'),
              children: [
                Text('All charges will be covered under free delivery...'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
