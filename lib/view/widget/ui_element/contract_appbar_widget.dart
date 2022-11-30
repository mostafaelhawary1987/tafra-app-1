import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/translation/languages.dart';
import '../../../../shared/fonts.dart';
import 'back_button_widget.dart';

class ContractMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  const ContractMainAppBar({
    Key? key,
   
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _statusBarHeight = MediaQueryData.fromWindow(window).padding.top;
    return AppBar(
      
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const BackButtonWidget(),
      centerTitle: true,
      title: Text(
        LanguagesKeys.contract.toString().tr,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontFamily: MyFontFamily.bold,
            color: Theme.of(context).colorScheme.primary),
      ),
    bottom:TabBar(
            // isScrollable: true,
            physics: const NeverScrollableScrollPhysics(),
            labelPadding: EdgeInsets.symmetric(horizontal: 0.0.h),
            // indicatorColor: mainColor,
            // controller: orderController,
            // labelColor: mainColor,
            // unselectedLabelColor: iconColor,
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
        LanguagesKeys.current.toString().tr,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontFamily: MyFontFamily.bold,
            color: Theme.of(context).colorScheme.primary),
      ),
                
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
          LanguagesKeys.previous.toString().tr,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontFamily: MyFontFamily.bold,
            color: Theme.of(context).colorScheme.primary),
      ),
              ),
              )
            ],
          ) ,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
