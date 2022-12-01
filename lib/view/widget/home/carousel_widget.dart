import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/main_controller.dart';
import '../../../shared/sizes.dart';

class CarouselWidget extends StatelessWidget {
  CarouselWidget({Key? key}) : super(key: key);
  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MySizes.horizontalMargin * 6,
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: controller.bannerList.length,
            carouselController: controller.carouselController,
            options: CarouselOptions(
                height: MySizes.horizontalMargin * 8,
                autoPlay: true,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlayInterval: const Duration(seconds: 2),
                viewportFraction: 1,
                onPageChanged: (index, reson) {
                  controller.changePage(index);
                }),
            itemBuilder: (context, index, realIndex) {
              return Container(
                child: Image.asset(controller.bannerList[index]),
              );
            },
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: MySizes.verticalMargin * .3),
          child: GetBuilder<MainController>(
            builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.bannerList.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: EdgeInsets.symmetric(horizontal: 1.8.w),
                  height: 2.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    color: controller.currentPage == index
                        ? Get.theme.colorScheme.primary
                        : const Color(0xFFC1C1DC),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
