import 'package:ecom/presentation/widgets/appbar.dart';
import 'package:ecom/presentation/widgets/date.dart';
import 'package:ecom/presentation/widgets/order_item.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: const AppBarWidget(
        title: 'Orders',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
      ),
    );
  }
}
