import "package:toilet_duck/controllers/p0/sign_in/sign_in_page_controller.dart";

import "package:get/get.dart";

class SignInPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInPageController>(() => SignInPageController());
  }
}
