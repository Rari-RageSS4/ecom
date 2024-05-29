import 'package:ecom/pages/onboarding/onboarding1.dart';
import 'package:ecom/pages/onboarding/onboarding2.dart';
import 'package:ecom/pages/onboarding/onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Pageview extends StatelessWidget {
  Pageview({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
            ],
          ),
          // dot indicator
          Container(
            alignment: const Alignment(0, 0.9),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.white,
                dotColor: Color.fromARGB(164, 113, 101, 226),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
