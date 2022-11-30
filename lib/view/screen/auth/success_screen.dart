
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/view/screen/auth/login_screen.dart';

import '../../../shared/fonts.dart';
import '../../../shared/get_navigate_functions.dart';
import '../../../shared/images.dart';
import '../../../shared/sizes.dart';
import '../../../translation/languages.dart';
import '../../widget/ui_element/custom_scaffold.dart';
import '../../widget/ui_element/elevated_button_widget.dart';



class SuccessLoginScreen extends StatelessWidget {
  const SuccessLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      content: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: MySizes.verticalMargin * 5,
          ),
          child: Column(children: [
            Image.asset(
              MyImages.mark,
              scale: 3.5.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              LanguagesKeys.register_successfully.toString().tr,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontFamily: MyFontFamily.bold,
                  color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              LanguagesKeys.note_login_order.toString().tr,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontFamily: MyFontFamily.medium,
                  color: Theme.of(context).colorScheme.primaryContainer),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MySizes.horizontalMargin),
              child: ElevatedButtonWidget(
                title: LanguagesKeys.login_in.toString().tr,
                onTap: () {
                  getToScreen(const LoginScreen());
                },
              ),
            ),

          ]),
        ),
      ),
    );
  }
}
