import "package:toilet_duck/controllers/p0/introduction/introduction_page_controller.dart";

import "package:get/get.dart";

class IntroductionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroductionPageController>(() => IntroductionPageController());
  }
}
