import 'package:ecom/presentation/screens/order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {

  final pageController = PageController();
  static String id = 'RebuildOnboarding';

  int currentPageIndex = 0;

  void pageChange() {
    if (currentPageIndex < 2) {
      currentPageIndex++;
      pageController.animateToPage(
        currentPageIndex,
        duration: const Duration(milliseconds: 100),
        curve: Curves.linear,
      );
      update([id]);
    } else{
      Get.to(const Order());
    }
  }

  void onPageChanged(index){
    currentPageIndex = index;
    update([id]);
  }

}
