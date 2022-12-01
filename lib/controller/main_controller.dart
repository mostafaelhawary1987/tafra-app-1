
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:sa3ada/shared/images.dart';



class MainController extends GetxController {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
   int currentPage = 0;
  void changeCurrentIndex(int index) {
    currentIndex = index;
    update();
  }
   void changePage(int index) {
    currentPage = index;
    update();
  }

    List<String> bannerList = [
    MyImages.slider1,
    MyImages.slider2,
    MyImages.slider3,
  ];
  String? selectfilter;
  selectFilter({String? value}) {
    selectfilter = value;
    var selectsearch;
    selectsearch.text = value!;
  }

  // var tabs = [
  //   const HomeScreen(),
  //   const CategoryScreen(),
  //   const PaymentScreen(),
  //   const AccountScreen(),
  // ];
}
