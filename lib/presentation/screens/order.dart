import 'package:ecom/presentation/screens/network_error.dart';
import 'package:ecom/presentation/screens/order_success.dart';
import 'package:ecom/presentation/widgets/appbar.dart';
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
      appBar: const AppBarWidget(),
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
