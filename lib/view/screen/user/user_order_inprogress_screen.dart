import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/translation/languages.dart';
import 'package:sa3ada/view/widget/ui_element/appbar_widget.dart';
import 'package:sa3ada/view/widget/ui_element/custom_scaffold.dart';

import '../../../shared/get_navigate_functions.dart';
import '../../../shared/sizes.dart';
import '../../widget/ui_element/elevated_button_widget.dart';
import '../../widget/user/user_radio_contract_widget.dart';
import '../../widget/user/user_radio_data_widget.dart';
import '../../widget/user/user_radio_day_widget.dart';
import '../../widget/user/user_radio_time_widget.dart';
import '../payment_screen.dart';

class UserInprogressScreen extends StatelessWidget {
  const UserInprogressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        content: Scaffold(
      appBar: const MainAppBar(title: 'أسماء ابراهيم ممدوح'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: MySizes.verticalMargin,
                    horizontal: MySizes.horizontalMargin * 0.5),
                child: const UserRadioContractWidget()),
            Container(
              height: 2.h,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: MySizes.verticalMargin * .5,
                    horizontal: MySizes.horizontalMargin * 0.5),
                child: const UserRadioTimeingWidget()),

            Container(
              height: 2.h,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: MySizes.verticalMargin * .5,
                    horizontal: MySizes.horizontalMargin * 0.5),
                child: const UserRadioDayWidget()),
            Container(
              height: 2.h,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            SizedBox(
              height: 15.h,
            ),

            Container(
                padding: EdgeInsets.symmetric(
                    // vertical: MySizes.verticalMargin * .5,
                    horizontal: MySizes.horizontalMargin * 0.5),
                child: UserRadioDataWidget()),
            // SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MySizes.verticalMargin / 5,
                  horizontal: MySizes.horizontalMargin),
              child: ElevatedButtonWidget(
                title: LanguagesKeys.order_now.toString().tr,
                onTap: () {
                  getToScreen(const PaymentScreen());
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    ));
  }
}
