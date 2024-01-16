import "package:toilet_duck/data/class/user.dart";

import "package:get/get.dart";
import "package:get_storage/get_storage.dart";

class UserController extends GetxController {
  GetStorage getStorage = GetStorage();

  Rx<User> currentUser = User().obs;

  @override
  void onInit() {
    super.onInit();

    currentUser = getStorage.hasData("user")
        ? User.fromJson(getStorage.read("user")).obs
        : User().obs;
  }

  @override
  void onClose() {
    setUser(currentUser.value.toJson());

    super.onClose();
  }

  void setUser(Map<String, dynamic> user) => getStorage.write("user", user);

  void removeUser() {
    getStorage.remove("user");
    currentUser = User().obs;
  }

  void updateUser(Map<String, dynamic> user) {
    currentUser.value = User.fromJson(user);
    setUser(user);
  }
}
