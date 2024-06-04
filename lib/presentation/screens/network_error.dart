import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NetworkError extends StatelessWidget {
  const NetworkError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // deliver to this place

                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Deliver to",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),

                    //place
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // location icon
                        Icon(
                          Icons.location_on_rounded,
                          color: Color(0XFF3560A5),
                        ),
                        //name of the place
                        Text(
                          'Shehbaz Town, Calicut',
                          style: TextStyle(color: Color(0XFF29384B)),
                        ),
                        // down arrow
                        Icon(Icons.keyboard_arrow_down_rounded),
                      ],
                    ),
                  ],
                ),
                // image
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          image: AssetImage("assets/premium.png"))),
                  height: 50,
                  width: 50,
                )
              ],
            ),

            const SizedBox(
              height: 16,
            ),

            // search bar for place search
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'What are you looking for?',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0XFF3560A5),
                  )),
            ),

            const SizedBox(
              height: 106,
            ),

            // image
            Image.asset(
              'assets/deliver.png',
              height: 177,
              width: 249,
              fit: BoxFit.cover,
            ),

            // comment on network error
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: Text(
                "Sorry! We've got some network error!!",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0XFF29384B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
