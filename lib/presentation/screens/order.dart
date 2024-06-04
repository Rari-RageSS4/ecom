import 'package:ecom/presentation/screens/network_error.dart';
import 'package:ecom/presentation/screens/order_success.dart';
import 'package:ecom/presentation/widgets/date.dart';
import 'package:ecom/presentation/widgets/order_item.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
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
                 Get.to(const NetworkError());
                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //date
            const Date(),
            
            // items
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) => const OrderItem(),
              separatorBuilder: (BuildContext context, int index) {
                return const Date();
              },
            ),
          ],
        ),
      ),
    );
  }
}
