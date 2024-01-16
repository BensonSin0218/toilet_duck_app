import "package:toilet_duck/data/class/user.dart";

import "package:get/get.dart";

class SignUpPageController extends GetxController {
  Rx<User> signUpUser = User().obs;
}
