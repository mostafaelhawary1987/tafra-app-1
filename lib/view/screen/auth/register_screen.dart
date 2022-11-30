import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/sizes.dart';
import '../../../shared/validations.dart';
import '../../../translation/languages.dart';
import '../../widget/confirm_dialog_widget.dart';
import '../../widget/ui_element/appbar_widget.dart';
import '../../widget/ui_element/custom_scaffold.dart';
import '../../widget/ui_element/elevated_button_widget.dart';
import '../../widget/ui_element/text_field_form_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController? fullNameController;
  TextEditingController? phoneController;
  TextEditingController? emailController;

  TextEditingController? passwordController;
  TextEditingController? confirmPasswordController;
  @override
  void initState() {
    fullNameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();

    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    fullNameController?.dispose();
    phoneController?.dispose();
    emailController?.dispose();

    passwordController?.dispose();
    confirmPasswordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        content: Scaffold(
            appBar: MainAppBar(
              title: LanguagesKeys.create_new_an_account.toString().tr,
            ),
            body: SafeArea(
                child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  vertical: MySizes.verticalMargin * .9,
                  horizontal: MySizes.horizontalMargin *.5),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MySizes.verticalMargin * 0.2,
                    ),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomTextFormField(
                              textInputType: TextInputType.text,
                              controller: fullNameController,
                              validator: validateNotEmpty,
                              labelText: LanguagesKeys.user_name.toString().tr,
                              hintText: LanguagesKeys.full_name.toString().tr,
                            ),
                            CustomTextFormField(
                              controller: phoneController,
                              validator: validatePhone,
                              textInputType: TextInputType.number,
                              labelText: LanguagesKeys.phone.toString().tr,
                            ),
                            CustomTextFormField(
                              controller: emailController,
                              textInputType: TextInputType.emailAddress,
                              labelText: LanguagesKeys.email.toString().tr,
                              validator: validateEmail,
                            ),
                            CustomTextFormField(
                              controller: passwordController,
                              validator: validatePassword,
                              labelText: LanguagesKeys.password.toString().tr,
                              hintText: '*********',
                            ),
                            CustomTextFormField(
                              controller: confirmPasswordController,
                               labelText: LanguagesKeys.reset_password.toString().tr,
                              validator: (value) => validateConfirmPass(
                                  value1: passwordController!.text,
                                  value2: value!),
                              textInputType: TextInputType.text,
                            ),
                          ],
                        )),
                    ElevatedButtonWidget(
                      title: LanguagesKeys.create_an_account.toString().tr,
                      onTap: () {
                        Get.dialog(const ConfirmDialogWidget());
                      },
                    ),
                  ]),
            ))));
  }
}
