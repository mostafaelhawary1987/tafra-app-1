import 'package:get/get.dart';

class UserController extends GetxController{
    var rate = 0.0;
  void rateFun(double? rating) {
    rate = rating!;
    update();
  }
}