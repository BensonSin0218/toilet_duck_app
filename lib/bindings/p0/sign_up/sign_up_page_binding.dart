import "package:toilet_duck/controllers/p0/sign_up/sign_up_page_controller.dart";

import "package:get/get.dart";

class SignUpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpPageController>(() => SignUpPageController());
  }
}
