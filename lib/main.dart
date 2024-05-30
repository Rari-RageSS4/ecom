import 'package:ecom/pages/onboarding/onboarding_pageview.dart';
import 'package:ecom/pages/onboarding/onboarding_binding.dart';
import 'package:ecom/pages/splashscreen/splash_binding.dart';
import 'package:ecom/pages/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: "/onboarding",
          page: () => const OnboardingPageview(),
          binding: OnboardingBinding(),
        ),
      ],
      debugShowCheckedModeBanner: false,
      initialBinding: SplashBinding(),
      title: 'Fish',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
