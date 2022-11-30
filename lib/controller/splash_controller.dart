import 'dart:async';

import 'package:get/get.dart';

import '../view/screen/auth/login_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    _handleSplash();
    super.onInit();
  }

  void _handleSplash() {
    Timer(const Duration(seconds: 2), () {
      Get.offAll(() => const LoginScreen());
    });
  }
}
