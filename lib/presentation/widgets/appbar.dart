import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.grey[100],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border:
                  Border.all(color: const Color.fromARGB(255, 207, 207, 207)),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              tooltip: 'Go Back',
              onPressed: () {
                Get.back();
              },
            ),
          ),
        ),
        centerTitle: true,
        title: const Text('Orders'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(color: const Color.fromARGB(255, 207, 207, 207)),
                color: Colors.white,
              ),
              child: IconButton(
                icon: const Icon(Icons.shopping_cart),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // ORDER SUCCESSFUL
                 // Get.to(const OrderSuccess());
                 //Get.to(const NetworkError());
                },
              ),
            ),
          ),
        ],
      );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(50);
}