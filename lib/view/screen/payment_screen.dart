import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/translation/languages.dart';


import '../../shared/sizes.dart';
import '../widget/payment/payment_card_widger.dart';
import '../widget/payment/payment_data_widget.dart';
import '../widget/ui_element/appbar_widget.dart';
import '../widget/ui_element/custom_scaffold.dart';


class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        content: Scaffold(
            appBar: MainAppBar(
              title: LanguagesKeys.payment.toString().tr,
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: MySizes.verticalMargin,
                    horizontal: MySizes.horizontalMargin * 0.5),
                child: Column(
                  children: [
                    const PaymentCardWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    PaymentDataWidget(),
                   
                  ],
                ),
              ),
            )));
  }
}
