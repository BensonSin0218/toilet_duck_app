import "package:toilet_duck/controllers/splash/splash_page_animation_controller.dart";

import "package:get/get.dart";

class SplashPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashPageAnimationController>(
        () => SplashPageAnimationController());
  }
}
