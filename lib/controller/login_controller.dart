import 'package:get/get.dart';

class LoginController extends GetxController {
  var loggedIn = false.obs;
  var username = ''.obs;
  var password = ''.obs;

  void login() {
    if (username.value == "admin" && password.value == "1234") {
      loggedIn.value = true;
      Get.toNamed('/dashboard');
    } else {
      loggedIn.value = false;
      Get.snackbar('Error', 'Invalid username or password');
    }
  }
}
