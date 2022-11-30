import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:sa3ada/view/widget/ui_element/appbar_widget.dart';

import '../../../shared/fonts.dart';
import '../../../shared/get_navigate_functions.dart';
import '../../../shared/images.dart';
import '../../../shared/sizes.dart';
import '../../../translation/languages.dart';
import '../../widget/ui_element/custom_scaffold.dart';
import '../../widget/ui_element/elevated_button_widget.dart';
import '../main_screen.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      content: Scaffold(
        appBar: MainAppBar(
          title: LanguagesKeys.order_summary.toString().tr,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
              vertical: MySizes.verticalMargin * 1.5,
              horizontal: MySizes.horizontalMargin),
          child: Column(children: [
            Image.asset(
              MyImages.mark,
              scale: 4.2.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              LanguagesKeys.note_success.toString().tr,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontFamily: MyFontFamily.bold,
                  color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(
              height: 10.h,
            ),
            // Text(
            //   LanguagesKeys.notes_order_details.toString().tr,
            //   textAlign: TextAlign.center,
            //   style: Theme.of(context).textTheme.subtitle1!.copyWith(
            //       fontFamily: MyFontFamily.medium,
            //       color: Theme.of(context).colorScheme.primaryContainer),
            // ),
            // Container(
            //   width: double.infinity,
            //   height: MySizes.buttonHeight,
            //   margin: EdgeInsets.only(
            //       top: MySizes.verticalMargin,
            //       bottom: MySizes.verticalMargin * .3),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       getToScreen(HomeScreen());
            //     },
            //     child: Text(
            //       LanguagesKeys.myOrder.toString().tr,
            //       style: Theme.of(context).textTheme.bodyText1?.copyWith(
            //           color: Theme.of(context).colorScheme.background,
            //           fontFamily: MyFontFamily.bold),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 5.h,
            ),
            ElevatedButtonWidget(
              title: LanguagesKeys.back_to_home.toString().tr,
              onTap: () {
                getToScreen(const MainScreen());
              },
            ),
            // Container(
            //   width: double.infinity,
            //   height: MySizes.buttonHeight,
            //   margin: EdgeInsets.only(bottom: MySizes.verticalMargin),
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       primary: Theme.of(context).colorScheme.onError,
            //     ),
            //     onPressed: () {
            //       getToScreen(HomeScreen());
            //     },
            //     child: Text(
            //       LanguagesKeys.back_to_home.toString().tr,
            //       style: Theme.of(context).textTheme.bodyText1?.copyWith(
            //           color: Theme.of(context).colorScheme.primary,
            //           fontFamily: MyFontFamily.bold),
            //     ),
            //   ),
            // )
          ]),
        ),
      ),
    );
  }
}
