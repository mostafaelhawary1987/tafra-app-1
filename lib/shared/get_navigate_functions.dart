import 'package:flutter/material.dart';
import 'package:get/get.dart';

void getToScreen(Widget directScreen) {
  Get.to(directScreen,
      transition: Transition.native,
      duration: const Duration(milliseconds: 400));
}

void getOffScreen(Widget directScreen) {
  Get.off(directScreen,
      transition: Transition.native,
      duration: const Duration(milliseconds: 400));
}

void getOffAllScreen(Widget directScreen) {
  Get.offAll(directScreen,
      transition: Transition.native,
      duration: const Duration(milliseconds: 400));
}
