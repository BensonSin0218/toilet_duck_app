import "package:toilet_duck/controllers/form_controller.dart";

import "package:get/get.dart";

class FormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormController>(() => FormController());
  }
}
