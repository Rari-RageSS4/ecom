import 'package:get/get.dart';

class NavBarController extends GetxController {
  int selectedIndex = 0;
  static const String rebuildNavbar = "rebuildNavbar";
  void onTap(index){
    selectedIndex = index;
    update([rebuildNavbar]);
  }
}