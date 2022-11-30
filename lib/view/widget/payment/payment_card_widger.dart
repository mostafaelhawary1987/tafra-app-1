import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/view/widget/payment/payment_radio_widget.dart';

import '../../../controller/payment_controller.dart';

import '../../../shared/images.dart';
import '../../../shared/sizes.dart';
import '../../../translation/languages.dart';

class PaymentCardWidget extends StatelessWidget {
  const PaymentCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: MySizes.verticalMargin,
            horizontal: MySizes.horizontalMargin * 0.5),
        decoration: BoxDecoration(
          
            borderRadius: BorderRadius.circular(10),
             boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1),
            ], 
            color: Theme.of(context).colorScheme.onPrimary),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Text(
          //   LanguagesKeys.payment.toString().tr,
          //   style: Theme.of(context).textTheme.bodyText1?.copyWith(
          //         color: Theme.of(context).colorScheme.primaryContainer,
          //         fontFamily: MyFontFamily.bold,
          //       ),
          // ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            width: double.infinity,
            height: MySizes.verticalMargin * 3,
            padding: EdgeInsets.symmetric(
              vertical: MySizes.verticalMargin / 2,
              horizontal: MySizes.horizontalMargin * 0.8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),

              border: Border.all(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<PaymentController>(builder: (controller) {
                  return PaymentRadioWidget<int>(
                    value: 0,
                    groupValue: controller.paymentMethod,
                    title: LanguagesKeys.visa.toString().tr,
                    onChanged: (value) =>
                        controller.updatePaymentMethod(value!),
                  );
                }),
                Image.asset(
                  MyImages.visa,
                  // width: MySizes.verticalMargin * 5,
                  // height: MySizes.verticalMargin * 5,
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(vertical: MySizes.verticalMargin * 0.4),
            width: double.infinity,
            height: MySizes.verticalMargin * 3,
            padding: EdgeInsets.symmetric(
              vertical: MySizes.verticalMargin / 2,
              horizontal: MySizes.horizontalMargin * 0.8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
       
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<PaymentController>(builder: (controller) {
                  return PaymentRadioWidget<int>(
                    value: 1,
                    groupValue: controller.paymentMethod,
                    title: LanguagesKeys.meza.toString().tr,
                    onChanged: (value) =>
                        controller.updatePaymentMethod(value!),
                  );
                }),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    MyImages.fawry,
                    // width: MySizes.verticalMargin * 1.5,
                    // height: MySizes.verticalMargin * 1.5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: MySizes.verticalMargin * 3,
            padding: EdgeInsets.symmetric(
              vertical: MySizes.verticalMargin / 2,
              horizontal: MySizes.horizontalMargin * 0.8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
           
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<PaymentController>(builder: (controller) {
                  return PaymentRadioWidget<int>(
                    value: 2,
                    groupValue: controller.paymentMethod,
                    title: LanguagesKeys.vodafone_cash.toString().tr,
                    onChanged: (value) =>
                        controller.updatePaymentMethod(value!),
                  );
                }),
                // ignore: avoid_unnecessary_containers
                Image.asset(
                  MyImages.vodafone,
                  // width: MySizes.verticalMargin * 2.5,
                  // height: MySizes.verticalMargin * 2,
                ),
              ],
            ),
          ),
        ]));
  }
}
