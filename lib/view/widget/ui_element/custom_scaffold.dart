

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScaffoldWidget extends StatelessWidget {
  final Widget content;
  final bool? isDark;
  const ScaffoldWidget({Key? key, required this.content, 
  this.isDark }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Platform.isIOS
      ? isDark == true
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark
      : SystemUiOverlayStyle(
        statusBarBrightness: 
        isDark == true 
        ? Brightness.light
        : Brightness.dark,
        // statusBarColor: Colors.transparent
      ),
      child: content
      );
  }
}
