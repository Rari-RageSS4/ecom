import 'package:ecom/presentation/controllers/nav_bar_controller.dart';
import 'package:ecom/presentation/screens/profile.dart';
import 'package:ecom/presentation/styles/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomNavBar extends GetWidget<NavBarController> {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<NavBarController>(
            id: NavBarController.rebuildNavbar,
            builder: (context) {
              return IndexedStack(
                index: controller.selectedIndex,
                children: [
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  const Profile()
                ],
              );
            }),
        bottomNavigationBar: GetBuilder<NavBarController>(
          id: NavBarController.rebuildNavbar,
          builder: (context) {
            return BottomNavigationBar(
              currentIndex: controller.selectedIndex,
              onTap: (index) => controller.onTap(index),
              showUnselectedLabels: true,
              selectedItemColor: AppColors.selectedColor,
              unselectedItemColor: AppColors.unSelectedColor,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/svg/Home.svg",
                      color: controller.selectedIndex == 0
                          ? AppColors.selectedColor
                          : AppColors.unSelectedColor,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/svg/subscription.svg",
                      color: controller.selectedIndex == 1
                          ? AppColors.selectedColor
                          : AppColors.unSelectedColor,
                    ),
                    label: "Subscription"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/svg/wallet.svg",
                      color: controller.selectedIndex == 2
                          ? AppColors.selectedColor
                          : AppColors.unSelectedColor,
                    ),
                    label: "Wallet"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/svg/cart.svg",
                      color: controller.selectedIndex == 3
                          ? AppColors.selectedColor
                          : AppColors.unSelectedColor,
                    ),
                    label: "Cart"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/svg/profile.svg",
                      color: controller.selectedIndex == 4
                          ? AppColors.selectedColor
                          : AppColors.unSelectedColor,
                    ),
                    label: "Profile"),
              ],
            );
          },
        ),
      ),
    );
  }
}
