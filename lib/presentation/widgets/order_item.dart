import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  // double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Column(
        children: [
          // item
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // image
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/prawns.jpg'))),
              ),

              const SizedBox(
                width: 25,
              ),

              // description
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // delivered
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 226, 59)),
                      borderRadius: BorderRadiusDirectional.circular(8),
                      color: const Color.fromARGB(255, 255, 234, 117),
                    ),
                    child: const Text('Delivered'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // item name
                  const Text(
                    'White Prawns Fish',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  const Text("Whole cleaned"),
                  const SizedBox(
                    height: 15,
                  ),
                  // quantity
                  const Text(
                    "150g",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),

          const SizedBox(
            height: 25,
          ),

          Divider(
            color: Colors.grey[300],
          ),

          // total
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //total text

              Text(
                'Total paid',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              // total price
              Text(
                '170',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const Divider(),

          // rate
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Rate",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 87, 159),
                    fontWeight: FontWeight.bold),
              ),
              // star
              RatingBar.builder(
                minRating: 1,
                maxRating: 5,
                initialRating: 1,
                allowHalfRating: true,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                unratedColor: Colors.grey,
                onRatingUpdate: onSaveRating,
                updateOnDrag: true,
                itemSize: 22,
              ),

              // re order button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color.fromARGB(255, 4, 97, 190),
                ),
                label: const Text(
                  "Reorder",
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.refresh_rounded,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }

  onSaveRating(value) {}
}
