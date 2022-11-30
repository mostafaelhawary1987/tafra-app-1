import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/fonts.dart';

import '../../../shared/global_config.dart';
import '../../../shared/sizes.dart';

class CustomTextFormField extends StatefulWidget {
  final String? prefixImage;
  final double? prefixImagesScale;
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? suffixImage;
  final TextInputType? textInputType;
  final double? suffImageScal;
  final void Function()? suffixOnTap;
  final bool? obscureText;
  final int? maxLine;
  final Color? fillColor;
  final bool? readOnly;
  final String? Function(String?)? validator;
  AutovalidateMode validateType;

  CustomTextFormField(
      {Key? key,
      this.prefixImage,
      this.prefixImagesScale,
      this.controller,
      this.hintText,
      this.labelText,
      this.suffixImage,
      this.textInputType,
      this.readOnly,
      this.fillColor = const Color(0xffffffff),
      this.suffImageScal,
      this.suffixOnTap,
      this.obscureText,
      this.maxLine,
      this.validator,
      this.validateType = AutovalidateMode.onUserInteraction})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MySizes.verticalMargin * 3.5,
      padding: const EdgeInsets.only(bottom: 20.0),
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        elevation: 5.0,
        shadowColor: const Color.fromRGBO(43, 55, 81, 0.1),
        // margin: EdgeInsets.only(bottom: 10.h),
        child: TextFormField(
            keyboardType: widget.textInputType,
            controller: widget.controller,
            focusNode: _focusNode,
            readOnly: widget.readOnly ?? false,
            validator: widget.validator,
            autovalidateMode: widget.validateType,
            obscureText: widget.obscureText ?? false,
            maxLines: widget.maxLine ?? 1,
            decoration: InputDecoration(
              labelText: widget.labelText,
              labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontFamily: MyFontFamily.regular,
                    height: 1.5,
                    color: Theme.of(context).colorScheme.primary,
                  ),
              fillColor: widget.fillColor,
              // ? Theme.of(context).colorScheme.background
              // : Theme.of(context).colorScheme.onPrimary,
              contentPadding: EdgeInsets.symmetric(
                  vertical: MySizes.verticalMargin,
                  horizontal: MySizes.verticalMargin),
              hintText: widget.hintText,
              prefixIcon: widget.prefixImage != null
                  ? Container(
                      margin: EdgeInsetsDirectional.only(start: 2.5.w),
                      width: 8.w,
                      height: 8.w,
                      padding: EdgeInsets.all(1.w),
                      child: Image.asset(
                        iconAssets + widget.prefixImage!,
                        scale: widget.prefixImagesScale,
                        color: _focusNode.hasFocus
                            ? Get.theme.colorScheme.primary
                            : Get.theme.colorScheme.secondary,
                      ),
                    )
                  : null,
              suffixIcon: widget.suffixImage != null
                  ? InkWell(
                      onTap: widget.suffixOnTap,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Container(
                          margin: EdgeInsetsDirectional.only(end: 2.5.w),
                          width: 8.w,
                          height: 8.w,
                          padding: EdgeInsets.all(1.w),
                          child: Image.asset(
                            iconAssets + widget.suffixImage!,
                            scale: widget.suffImageScal,
                            color: _focusNode.hasFocus
                                ? Get.theme.colorScheme.primary
                                : Get.theme.colorScheme.secondary,
                          )),
                    )
                  : null,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.2.w, color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(10.h)),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.2.w, color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(10.h)),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.2.w, color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.h)),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.2.w, color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.h)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1.2.w, color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.all(Radius.circular(10.h)),
              ),
            ),
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontFamily: MyFontFamily.regular,
                height: 1.5,
                color: Theme.of(context).colorScheme.onSurface)),
      ),
    );
  }
}
