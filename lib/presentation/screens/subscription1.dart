import 'package:ecom/presentation/widgets/appbar.dart';
import 'package:ecom/presentation/widgets/date.dart';
import 'package:ecom/presentation/widgets/gold_container.dart';
import 'package:ecom/presentation/widgets/order_item.dart';
import 'package:flutter/material.dart';

class Subscription1 extends StatelessWidget {
  const Subscription1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Subscription",
        trailing: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage("assets/premium.png"),
            ),
          ),
          height: 50,
          width: 50,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SubscriptionContainer(),
              const SizedBox(height: 20),
              const Date(),
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
