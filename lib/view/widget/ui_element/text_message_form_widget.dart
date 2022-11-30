
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/fonts.dart';
import '../../../shared/sizes.dart';

class TextMessageFormWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String? text;
  final String? Function(String?) validate;
  final AutovalidateMode validateType;
  final int? maxLines;
  const TextMessageFormWidget({
    Key? key,
    this.controller,
    required this.validate,
    required this.text,
    this.validateType = AutovalidateMode.onUserInteraction,
    this.maxLines,
  }) : super(key: key);

  @override
  State<TextMessageFormWidget> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<TextMessageFormWidget> {
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
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      validator: widget.validate,
      maxLines: widget.maxLines ?? 5,
      autovalidateMode: widget.validateType,
      decoration: InputDecoration(
        fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontFamily: MyFontFamily.regular,
            fontSize: 13.sp),
        contentPadding: EdgeInsets.symmetric(
            vertical: MySizes.verticalMargin,
            horizontal: MySizes.horizontalMargin * .8),
        hintText: widget.text,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.2.w, color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(15.h)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.2.w, color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(15.h)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.2.w, color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(15.h)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.2.w, color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(15.h)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1.2.w, color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.all(Radius.circular(15.h)),
        ),
      ),
    );
  }
}
