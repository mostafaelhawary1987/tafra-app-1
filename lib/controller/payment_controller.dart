import 'package:get/get.dart';

class PaymentController extends GetxController{
    int paymentMethod = 0;


  void updatePaymentMethod(int value) {
    paymentMethod = value;
    update();
  }

}