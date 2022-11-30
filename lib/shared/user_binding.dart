import 'package:get/get.dart';

import '../controller/auth/login_controller.dart';
import '../controller/auth/register_controller.dart';
import '../controller/category_controller.dart';
import '../controller/contract_controller.dart';
import '../controller/main_controller.dart';
import '../controller/payment_controller.dart';
import '../controller/splash_controller.dart';
import '../controller/user_controller.dart';


class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(LoginController());
    Get.put(RegisterController());
    Get.put(CategoryController());
    Get.put(PaymentController());
    Get.put(MainController());
    Get.put(UserController());
    Get.put(ContractController());

  }
}
