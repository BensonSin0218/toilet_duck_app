import "package:get/get.dart";
import "package:get_storage/get_storage.dart";

class IntroductionController extends GetxController {
  GetStorage getStorage = GetStorage();

  RxBool isDoneIntroduction = false.obs;

  @override
  void onInit() {
    super.onInit();

    isDoneIntroduction.value = getStorage.hasData("isDoneIntroduction") ? getStorage.read("isDoneIntroduction") : false.obs;
  }
}