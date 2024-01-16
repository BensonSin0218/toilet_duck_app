import "package:get/get.dart";

class SplashPageAnimationController extends GetxController {
  RxBool showAppTitle = false.obs;
  RxList<bool> showMessageBoxes = <bool> [
    false,
    false,
    false
  ].obs;
}