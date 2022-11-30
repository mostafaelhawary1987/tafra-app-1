import 'package:get/get.dart';

class LoginController extends GetxController{
    bool secureText = true;
  void changeScureText() {
    secureText = !secureText;
    update();
  }
}