import 'package:ecom/presentation/screens/onboarding.dart';
import 'package:ecom/presentation/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageview extends GetWidget<OnboardingController> {
  const OnboardingPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<OnboardingController>(
        id: OnboardingController.id,
        builder: (context) {
          return Stack(
            children: [
              PageView(
                onPageChanged: controller.onPageChanged,
                controller: controller.pageController,
                children: List.generate(3, (index)=> Onboarding(currentIndex: index))
          
                  // Onboarding(currentIndex: controller.currentPageIndex,),
                  // Onboarding(currentIndex: controller.currentPageIndex,),
                  // Onboarding(currentIndex: controller.currentPageIndex,),
                
              ),
              // dot indicator
              Container(
                alignment: const Alignment(0, 0.9),
                child: SmoothPageIndicator(
                  controller: controller.pageController,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.white,
                    dotColor: Color.fromARGB(164, 113, 101, 226),
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0).copyWith(bottom: 25),
                  child: Row(
                    mainAxisAlignment: controller.currentPageIndex == 2? MainAxisAlignment.end: MainAxisAlignment.spaceBetween,
                    children: [
                      if(controller.currentPageIndex != 2)
                      InkWell(
                        onTap: () {
                          controller.pageChange();
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
          
                      // icon
                      InkWell(
                        onTap: () => controller.pageChange(),
                        child: const CircleAvatar(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
