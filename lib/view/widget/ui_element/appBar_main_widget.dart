import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/fonts.dart';
import 'back_button_widget.dart';
import 'custom_dorpdown_location.dart';

class CustomMainBar extends StatelessWidget implements PreferredSizeWidget {

  final bool? back;

  const CustomMainBar({
    Key? key,
    this.back = true,

    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _statusBarHeight = MediaQueryData.fromWindow(window).padding.top;
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading:
          back != false ? const BackButtonWidget() : const SizedBox.shrink(),
     
      title: const CustomDropDownLocation()

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
