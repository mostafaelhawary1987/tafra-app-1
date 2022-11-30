
import 'package:get/get.dart';



class MainController extends GetxController {
  int currentIndex = 0;
  void changeCurrentIndex(int index) {
    currentIndex = index;
    update();
  }

  // var tabs = [
  //   const HomeScreen(),
  //   const CategoryScreen(),
  //   const PaymentScreen(),
  //   const AccountScreen(),
  // ];
}
