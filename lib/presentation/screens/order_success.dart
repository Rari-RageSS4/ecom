import 'package:flutter/material.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Center(child: Text("Your order placed successfully!")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color.fromARGB(255, 0, 62, 112)),
                  color: Colors.white,
                ),
                height: 40,
                width: 150,
                child: const Center(
                  child: Text(
                    "Go to home",
                    style: TextStyle(color: Color.fromARGB(255, 0, 62, 112)),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 0, 62, 112),
                ),
                height: 40,
                width: 150, 
                child: const Center(
                  child: Text(
                    "Track orders",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
