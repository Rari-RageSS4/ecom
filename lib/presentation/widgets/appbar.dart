import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.title, this.trailing});
  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[100],
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 10),
        child: InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border:
                  Border.all(color: const Color.fromARGB(255, 207, 207, 207)),
            ),
            child: const Icon(
              Icons.arrow_back,
              size: 24,
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: GoogleFonts.urbanist(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF29384B),
        ),
      ),
      actions: [
        trailing ??
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: const Color.fromARGB(255, 207, 207, 207)),
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  tooltip: 'Open shopping cart',
                  onPressed: () {},
                ),
              ),
            ),
        const SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
