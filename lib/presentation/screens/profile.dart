import 'package:ecom/presentation/styles/colors/colors.dart';
import 'package:ecom/presentation/widgets/profile_listtile.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              profileDetails(),

              const SizedBox(
                height: 24,
              ),

              // refer friends
              referFriend(),

              const SizedBox(
                height: 24,
              ),

              // Orders
              orders(),

              const SizedBox(
                height: 24,
              ),

              support(),

              const SizedBox(
                height: 24,
              ),

              rateLogout(),
            ],
          ),
        ),
      ),
    );
  }

  Container rateLogout() {
    return Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ProfileListtile(
                    icon: Image.asset('assets/icons/edit_square.png'),
                    text: 'Rate us on playstore',
                    isTrailing: false,
                  ),
                  ProfileListtile(
                    icon: Image.asset('assets/icons/logout.png'),
                    text: 'Logout',
                    isTrailing: false,
                  ),
                ],
              ),
            );
  }

  Container support() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Support",
            style: TextStyle(color: Colors.grey),
          ),
          ProfileListtile(
            icon: Image.asset('assets/icons/chat.png'),
            text: 'Get Help',
          ),
          ProfileListtile(
            icon: Image.asset('assets/icons/document.png'),
            text: 'Terms & Conditions',
          ),
          ProfileListtile(
            icon: Image.asset('assets/icons/info_square.png'),
            text: 'About Us',
          ),
        ],
      ),
    );
  }

  Container orders() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Orders",
            style: TextStyle(color: Colors.grey),
          ),
          ProfileListtile(
            icon: Image.asset('assets/icons/bag_icon.png'),
            text: 'My Orders',
          ),
          ProfileListtile(
            icon: Image.asset('assets/icons/buy.png'),
            text: 'Delivery Address',
          ),
          ProfileListtile(
            icon: Image.asset('assets/icons/notification.png'),
            text: 'Notifications',
          ),
        ],
      ),
    );
  }

  Container referFriend() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: ProfileListtile(
          icon: Image.asset('assets/icons/person.png'),
          text: "Refer friends & Earn"),
    );
  }

  Container profileDetails() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Stack(
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/profilepic.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // camera
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.profileCamBg,
                  ),
                  padding: const EdgeInsets.all(5),
                  // height: 23,
                  // width: 23,
                  child: const Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),

          const SizedBox(
            width: 16,
          ),

          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              // title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Densie Handson",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  // trailing icon
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              // sub
              Text(
                "robert123@gmail.com",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "ID: 123F4F2001",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
