import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/get_navigate_functions.dart';
import '../../../shared/sizes.dart';
import '../../../shared/validations.dart';
import '../../../translation/languages.dart';
import '../../screen/user/order_success_screen.dart';
import '../ui_element/elevated_button_widget.dart';
import '../ui_element/text_field_form_widget.dart';

class PaymentDataWidget extends StatefulWidget {
  PaymentDataWidget({Key? key}) : super(key: key);

  @override
  State<PaymentDataWidget> createState() => _PaymentDataWidgetState();
}

class _PaymentDataWidgetState extends State<PaymentDataWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController? nameVisa;
  TextEditingController? numberVisa;
  TextEditingController? expiredVisa;
  TextEditingController? cvvVisa;
  @override
  void initState() {
    super.initState();
    nameVisa = TextEditingController();
    numberVisa = TextEditingController();
    expiredVisa = TextEditingController();
    cvvVisa = TextEditingController();
  }

  @override
  void dispose() {
    nameVisa?.dispose();
    numberVisa?.dispose();
    expiredVisa?.dispose();
    cvvVisa?.dispose();

    super.dispose();
  }

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
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    textInputType: TextInputType.text,
                    controller: nameVisa,
                    validator: validateNotEmpty,
                    fillColor: Theme.of(context).colorScheme.background,
                    labelText: LanguagesKeys.user_visa.toString().tr,
                    hintText: LanguagesKeys.user_visa.toString().tr,
                  ),
                  CustomTextFormField(
                    textInputType: TextInputType.number,
                    controller: numberVisa,
                    fillColor: Theme.of(context).colorScheme.background,
                    validator: validateNotEmpty,
                    labelText: LanguagesKeys.visa_number.toString().tr,
                    hintText: '000 0000 0000 00000',
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          textInputType: TextInputType.number,
                          controller: expiredVisa,
                          fillColor: Theme.of(context).colorScheme.background,
                          validator: validateNotEmpty,
                          labelText: LanguagesKeys.expiry_date.toString().tr,
                          hintText: '10/22',
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          textInputType: TextInputType.number,
                          controller: cvvVisa,
                          fillColor: Theme.of(context).colorScheme.background,
                          validator: validateNotEmpty,
                          labelText: LanguagesKeys.cvv_visa.toString().tr,
                          hintText: '***',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButtonWidget(
              title: LanguagesKeys.confirm.toString().tr,
              onTap: () {
                getToScreen(const OrderSuccessScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
