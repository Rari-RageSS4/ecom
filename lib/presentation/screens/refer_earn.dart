import 'package:ecom/presentation/styles/dashed_line_painter.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: const Color.fromARGB(255, 207, 207, 207)),
              ),
              child: const Icon(
                Icons.arrow_back,
                size: 24,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF589d84),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: Get.width,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(25),
                  ),
                  color: Colors.white),
              child: Column(
                children: [
                  Image.asset(
                    'assets/refer.png',
                    height: 86,
                    width: 135,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Image.asset(
                    'assets/referppl.png',
                    height: 166,
                    width: 250,
                  ),
                ],
              ),
            ),
            // centre big text
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 62).copyWith(top: 34),
              child: Text(
                "Earn ₹300 for every friend that joins using your referral code",
                style: GoogleFonts.urbanist(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // small text
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 50, right: 50),
              child: Text(
                "Note : for our new policy, your friend need to subscribe after accepting your referral request",
                style: GoogleFonts.urbanist(
                  fontSize: 12,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // how referal works container
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color(0xFF73B09A),
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How it works",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "View TnCs",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/icons/Add User.png'),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          
                          // const Text(
                          //   " - - - - - - - ",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //   ),
                          // ),
                          CustomPaint(
                            size: const Size(60, 1),
                            painter: DashedLinePainter(),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/icons/rupee.png'),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          
                          // const Text(
                          //   " - - - - - - - ",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //   ),
                          // ),
                          CustomPaint(
                            size: const Size(60, 1),
                            painter: DashedLinePainter(),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/icons/gift.png'),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          
                        ],
                      ),
                      
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 63,
                            width: 94,
                            child: Text(
                              'Share the referral code with friends',
                              style: GoogleFonts.urbanist(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                         

                          SizedBox(
                            height: 63,
                            width: 94,
                            child: Text(
                              'Your friend joins & buy our subscription',
                              style: GoogleFonts.urbanist(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          SizedBox(
                            height: 63,
                            width: 94,
                            child: Text(
                              'You earn ₹300,They earn ₹100',
                              style: GoogleFonts.urbanist(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                      ],
                    )
                  ],
                ),
              ),
            ),

            // whatsapp, messenger, share buttons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // whatsapp container
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFF477f6b),
                    ),
                    height: 54,
                    width: 54,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('assets/icons/whatsapp.png'),
                    ),
                  ),

                  const SizedBox(width: 8,),
              
                  // messenger container
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFF477f6b),
                    ),
                    height: 54,
                    width: 54,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('assets/icons/msg.png'),
                    ),
                  ),

                  const SizedBox(width: 8,),
              
                  // invite friends
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFF477f6b),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/share.png'),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Invite friends',
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
