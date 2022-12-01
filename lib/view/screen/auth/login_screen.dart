import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/translation/languages.dart';
import 'package:sa3ada/view/screen/auth/register_screen.dart';
import 'package:sa3ada/view/screen/main_screen.dart';

import '../../../shared/fonts.dart';
import '../../../shared/get_navigate_functions.dart';
import '../../../shared/sizes.dart';
import '../../../shared/validations.dart';
import '../../widget/ui_element/appbar_widget.dart';
import '../../widget/ui_element/custom_scaffold.dart';
import '../../widget/ui_element/elevated_button_widget.dart';
import '../../widget/ui_element/text_field_form_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController? nameController;
  TextEditingController? passWordController;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    passWordController = TextEditingController();
  }

  @override
  void dispose() {
    nameController?.dispose();
    passWordController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      content: Scaffold(
        appBar: MainAppBar(
          
          title: LanguagesKeys.login_in.toString().tr,
          back: false,
        ),
        body: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  vertical: MySizes.verticalMargin,
                  horizontal: MySizes.horizontalMargin * 0.5),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          CustomTextFormField(
                            textInputType: TextInputType.text,
                            controller: nameController,
                            validator: validateNotEmpty,
                            labelText: LanguagesKeys.user_name.toString().tr,
                            hintText: LanguagesKeys.full_name.toString().tr,
                          ),
                          CustomTextFormField(
                            controller: passWordController,
                            validator: validatePassword,
                            labelText: LanguagesKeys.password.toString().tr,
                            hintText: '*********',
                          ),
                        ],
                      )),
                  ElevatedButtonWidget(
                    title: LanguagesKeys.login.toString().tr,
                    onTap: () {
                      getToScreen(const MainScreen());
                    },
                  ),
                  Center(
                    child: InkWell(
                      onTap: () => getToScreen(const RegisterScreen()),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Text(
                          LanguagesKeys.create_new_an_account.toString().tr,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontFamily: MyFontFamily.medium)),
                    ),
                  ),
                  SizedBox(
                    height: 150.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
