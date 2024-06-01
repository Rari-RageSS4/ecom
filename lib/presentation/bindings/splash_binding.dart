import 'package:ecom/presentation/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut( () => SplashController());
  }
}