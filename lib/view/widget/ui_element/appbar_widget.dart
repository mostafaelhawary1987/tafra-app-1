import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/fonts.dart';
import 'back_button_widget.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? back;
  const MainAppBar({
    Key? key,
    this.back = true,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _statusBarHeight = MediaQueryData.fromWindow(window).padding.top;
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading:
          back != false ? const BackButtonWidget() : const SizedBox.shrink(),
      centerTitle: true,
      title: Text(
        title!,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontFamily: MyFontFamily.bold,
            color: Theme.of(context).colorScheme.primary),
      ),
      //   shape: Border(
      // bottom: BorderSide(
      //   color: Color(0xff7E82AA),
      //   width: 1
      // )
      //   )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
