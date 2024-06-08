import 'package:ecom/presentation/controllers/nav_bar_controller.dart';
import 'package:get/get.dart';

class NavBarBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut( () => NavBarController());
  }
}