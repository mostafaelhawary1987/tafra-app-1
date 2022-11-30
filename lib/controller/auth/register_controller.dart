import 'package:get/get.dart';

class RegisterController extends GetxController {
  bool secureText = true;
  bool confirmSecureText = true;

  void changeSecureText() {
    secureText = !secureText;
    update();
  }

  void confirmChangeSecureText() {
    confirmSecureText = !confirmSecureText;
    update();
  }
}
