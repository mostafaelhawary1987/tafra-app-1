import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/shared/get_navigate_functions.dart';
import 'package:sa3ada/view/widget/ui_element/elevated_button_widget.dart';
import 'package:sa3ada/view/widget/ui_element/text_field_form_widget.dart';

import '../../../shared/sizes.dart';
import '../../shared/fonts.dart';
import '../../shared/validations.dart';
import '../../translation/languages.dart';
import '../screen/auth/success_screen.dart';

class ConfirmDialogWidget extends StatelessWidget {
  const ConfirmDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      insetPadding: EdgeInsets.symmetric(
          vertical: MySizes.verticalMargin,
          horizontal: MySizes.horizontalMargin),
      backgroundColor: Get.theme.colorScheme.background,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MySizes.verticalMargin,
              horizontal: MySizes.horizontalMargin * .7),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(LanguagesKeys.enter_confirmation_code.toString().tr,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: MyFontFamily.bold,
                      color: Theme.of(context).colorScheme.primary,
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),

              CustomTextFormField(
                labelText: LanguagesKeys.verification_code.toString().tr,
                hintText: '*********',
                validator: validateNotEmpty,
                textInputType: TextInputType.number,
              ),
              // TextMessageFormWidget(
              //   text: LanguagesKeys.verification_code.toString().tr,
              //   validate: validateNotEmpty,

              // ),

              ElevatedButtonWidget(
                title: LanguagesKeys.confirm.toString().tr,
                onTap: () {
                  getToScreen(const SuccessLoginScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
