import "package:toilet_duck/controllers/other_platform_sign_methods_controller.dart";

import "package:get/get.dart";

class OtherPlatformSignMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtherPlatformSignMethodsController>(
        () => OtherPlatformSignMethodsController());
  }
}
