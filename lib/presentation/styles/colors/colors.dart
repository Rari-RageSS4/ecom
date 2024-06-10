import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  //One instance, needs factory
  static AppColors? _instance;
  factory AppColors() => _instance ??= AppColors._();

  AppColors._();

  static const primaryColor = Color(0xFF003B73);
  static const darkGrey = Color(0xff7C7C7C);
  static const selectedColor = Color(0XFF3560A5);
  static const unSelectedColor = Color(0XFF939393);
  static const profileCamBg = Color(0XFF3560A5);
  static const profileIconBg = Color(0XFFEDF1F7);
  static const bg = Color(0XFFF5F6FB);
}
