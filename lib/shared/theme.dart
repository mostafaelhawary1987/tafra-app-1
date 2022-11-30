import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:sa3ada/shared/fonts.dart';
import 'package:sa3ada/shared/sizes.dart';

class MyTheme {
  static const _colorSchemeLight = ColorScheme(
    primary: Color(0xff5D51D3),
    primaryContainer: Color(0xff4A4A4A),
    secondary: Color(0xff9B9B9B),
    background: Color(0xFFF5F8FF),
    surface: Color(0xffF1F1F1),
    error: Colors.red,
    onSecondary: Color(0xff2B76B7),
    onSurface: Color(0xff4A4A4A),
    onPrimary: Color(0xffffffff),
    onBackground: Color(0xff00D787),
    onError: Color(0xffE8F0F7),
    brightness: Brightness.light,
  );

  static const _colorSchemeDark = ColorScheme(
    primary: Color(0xff4BD12A),
    primaryContainer: Color(0xff4A4A4A),
    secondary: Color(0xffB4B4B4),
    onSecondary: Color(0xffffffff),
    onPrimary: Color(0xffffffff),
    surface: Color(0xff414141),
    onBackground: Color(0xffffffff),
    background: Color(0xff2e2e2e),
    error: Colors.red,
    onSurface: Color(0xffffffff),
    onError: Color(0xffffffff),
    brightness: Brightness.dark,
  );

  static InputDecoration searchInputDecoration(BuildContext context,
      {required Brightness brightness}) {
    return const TextField().decoration!.copyWith(
          hintStyle: Theme.of(context).textTheme.caption?.copyWith(
                color: Theme.of(context).colorScheme.secondary.withOpacity(.75),
              ),
          fillColor: Theme.of(context).colorScheme.background,
          contentPadding: EdgeInsets.symmetric(
              vertical: MySizes.verticalMargin * 1,
              horizontal: MySizes.verticalMargin * .5),
          filled: true,
          suffixIcon: Padding(
            padding:
                EdgeInsetsDirectional.only(end: MySizes.verticalMargin * .3),
            child: Icon(
              Icons.search,
              color: const Color(0xffC5C5C5),
              size: 20.h,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            borderSide: BorderSide(
                width: 1.w, color: Theme.of(context).colorScheme.surface),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1.w, color: Theme.of(context).colorScheme.surface),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1.w, color: Theme.of(context).colorScheme.surface),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1.w, color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
        );
  }

  static ColorScheme _getCurrentColorScheme({required Brightness brightness}) {
    return (brightness) == Brightness.dark
        ? _colorSchemeDark
        : _colorSchemeLight;
  }

  ThemeData getTheme(Brightness brightness) {
    var colorScheme = _getCurrentColorScheme(brightness: brightness);
    var textTheme = _getTextTheme(brightness: brightness);
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'MyFontFamily',
      scaffoldBackgroundColor: colorScheme.background,
      backgroundColor: colorScheme.onPrimary,
      colorScheme: colorScheme,
      dialogTheme: const DialogTheme(),
      appBarTheme: AppBarTheme(
        titleSpacing: 0,
        titleTextStyle: textTheme.headline6!.copyWith(
          color: colorScheme.onBackground,
        ),
        elevation: 1,
        shadowColor: Colors.transparent,
        color: colorScheme.background,
        foregroundColor: colorScheme.onBackground,
        centerTitle: false,
      ),
      textTheme: textTheme,
      elevatedButtonTheme:
          MyButtonThemes.elevatedButtonThemeData(brightness: brightness),
      textButtonTheme:
          MyButtonThemes.transparentTextButton(brightness: brightness),
      inputDecorationTheme: _inputDecorationTheme(brightness: brightness),
      cardTheme: CardTheme(
        color: colorScheme.surface,
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(MySizes.rectRadius),
            side: const BorderSide(color: Colors.transparent)),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all<Color>(colorScheme.onPrimary),
        fillColor: MaterialStateProperty.all<Color>(colorScheme.primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        side: BorderSide(color: colorScheme.primary),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all<Color>(colorScheme.primary),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme:
            IconThemeData(color: colorScheme.primary, size: 24.sp),
        unselectedIconTheme: IconThemeData(
            color: colorScheme.secondaryContainer.withOpacity(.8), size: 24.sp),
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.secondaryContainer.withOpacity(.8),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontSize: 15.sp,
          height: 1.3.h,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 15.sp,
          height: 1.3.h,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colorScheme.background,
        elevation: 0.0,
        modalBackgroundColor: colorScheme.background,
        modalElevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(MySizes.circleRadius),
            topRight: Radius.circular(MySizes.circleRadius),
          ),
        ),
      ),
    );
  }

  static TextTheme _getTextTheme({required Brightness brightness}) {
    var colorScheme = _getCurrentColorScheme(brightness: brightness);
    return TextTheme(
      ////
      headline6: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 20.sp,
          fontFamily: MyFontFamily.bold),
      ////
      headline5: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 25.sp,
          fontFamily: MyFontFamily.regular),
      //
      headline4: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 11.sp,
          fontFamily: MyFontFamily.regular),
      ////
      headline3: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 22.sp,
          fontFamily: MyFontFamily.regular),
      ////
      headline2: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 18.sp,
          fontFamily: MyFontFamily.light),
      ////
      headline1: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 15.sp,
          fontFamily: MyFontFamily.light),
      //
      bodyText1: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 14.sp,
          fontFamily: MyFontFamily.regular),
      ////
      bodyText2: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 13.sp,
          fontFamily: MyFontFamily.regular),
      //
      caption: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 12.sp,
          fontFamily: MyFontFamily.regular),
      //
      overline: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 11.sp,
          fontFamily: MyFontFamily.regular),
      ////
      subtitle1: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 16.sp,
          fontFamily: MyFontFamily.regular),
      ////
      subtitle2: TextStyle(
          color: colorScheme.secondary,
          fontSize: 14.sp,
          fontFamily: MyFontFamily.medium),
      button: TextStyle(
          color: colorScheme.background,
          fontSize: 14.sp,
          fontFamily: MyFontFamily.medium),
    ).apply(
      decorationColor: colorScheme.onSurface,
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    );
  }
}

class MyButtonThemes {
  static final double _maxButtonHeight = 40.0.h;
  static final double _maxButtonWidth = 300.0.w;

  static ElevatedButtonThemeData elevatedButtonThemeData(
          {required Brightness brightness}) =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: MyTheme._getTextTheme(brightness: brightness).button,
          primary:
              MyTheme._getCurrentColorScheme(brightness: brightness).primary,
          onPrimary:
              MyTheme._getCurrentColorScheme(brightness: brightness).background,
          elevation: 0,
          shadowColor: Colors.white30,
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          shape: RoundedRectangleBorder(
            borderRadius: MySizes.defaultBorderRadius,
          ),
        ),
      );

  static TextButtonThemeData textButtonPrimaryCircularTheme(
          {required Brightness brightness}) =>
      TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor:
              MyTheme._getCurrentColorScheme(brightness: brightness).primary,
          primary: MyTheme._getCurrentColorScheme(brightness: brightness)
              .onSecondary,
          //textButtonColor
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
          minimumSize: Size(0, _maxButtonHeight),
          maximumSize: Size(_maxButtonWidth, _maxButtonHeight),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: MySizes.defaultBorderRadius,
          ),
        ),
      );

  static TextButtonThemeData iconButtonCircleTheme(
          {required Brightness brightness}) =>
      TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor:
              MyTheme._getCurrentColorScheme(brightness: brightness).primary,
          primary: MyTheme._getCurrentColorScheme(brightness: brightness)
              .onSecondary,
          //textButtonColor
          shape: const CircleBorder(),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
          minimumSize: Size(0, _maxButtonHeight),
          maximumSize: Size(_maxButtonWidth, _maxButtonHeight),
          elevation: 2,
        ),
      );

  static TextButtonThemeData textButtonPrimaryRectTheme(
          {required Brightness brightness}) =>
      TextButtonThemeData(
        style: TextButton.styleFrom(
            backgroundColor:
                MyTheme._getCurrentColorScheme(brightness: brightness).primary,
            primary: MyTheme._getCurrentColorScheme(brightness: brightness)
                .onSecondary,
            //textButtonColor
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            minimumSize: Size(0, _maxButtonHeight),
            maximumSize: Size(_maxButtonWidth, _maxButtonHeight),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: MySizes.recBorderRadius,
            )),
      );

  static TextButtonThemeData transparentTextButton(
      {required Brightness brightness}) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          primary: MyTheme._getCurrentColorScheme(brightness: brightness)
              .onBackground,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
          minimumSize: Size(0, _maxButtonHeight),
          textStyle: TextStyle(
            fontSize: 14.sp,
          ),
          maximumSize: Size(_maxButtonWidth, _maxButtonHeight),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: MySizes.defaultBorderRadius,
          )),
    );
  }
}

InputDecorationTheme _inputDecorationTheme({required Brightness brightness}) =>
    InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.8.h),
      floatingLabelStyle:
          MyTheme._getTextTheme(brightness: brightness).subtitle2,
      labelStyle: MyTheme._getTextTheme(brightness: brightness).subtitle2,
      hintStyle:
          MyTheme._getTextTheme(brightness: brightness).bodyText2!.copyWith(
                height: 1,
                color: MyTheme._getCurrentColorScheme(brightness: brightness)
                    .secondary,
              ),
      errorStyle: MyTheme._getTextTheme(brightness: brightness)
          .caption!
          .copyWith(fontSize: 12.sp, color: Colors.red),
      filled: true,
      fillColor: MyTheme._getCurrentColorScheme(brightness: brightness).surface,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color:
                MyTheme._getCurrentColorScheme(brightness: brightness).primary),
        borderRadius: BorderRadius.all(Radius.circular(MySizes.circleRadius)),
        gapPadding: 0,
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent
            // color: MyTheme._getCurrentColorScheme(brightness: brightness)
            //     .onBackground
            ),
        borderRadius: BorderRadius.all(Radius.circular(MySizes.circleRadius)),
        gapPadding: 0,
      ),
      isDense: false,
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color:
                MyTheme._getCurrentColorScheme(brightness: brightness).error),
        borderRadius: BorderRadius.all(Radius.circular(MySizes.circleRadius)),
        gapPadding: 0,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent
            // color: MyTheme._getCurrentColorScheme(brightness: brightness)
            //     .onBackground
            ),
        borderRadius: BorderRadius.all(Radius.circular(MySizes.circleRadius)),
        gapPadding: 0,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color:
                MyTheme._getCurrentColorScheme(brightness: brightness).error),
        borderRadius: BorderRadius.all(Radius.circular(MySizes.circleRadius)),
        gapPadding: 0,
      ),
    );

// final defaultPinTheme = PinTheme(
//   width: 45.w,
//   height: 55.h,
//   margin: EdgeInsets.symmetric(horizontal: 2.w),
//   textStyle: TextStyle(
//       fontFamily: MyFontFamily.regular,
//       color: Get.theme.colorScheme.primaryContainer,
//       fontSize: 25.sp),
//   decoration: BoxDecoration(
//     color: Colors.transparent,
//     borderRadius: BorderRadius.all(Radius.circular(5.w)),
//     border: Border.all(width: 1.w, color: Get.theme.colorScheme.surface),
//   ),
// );

// final focusedPinTheme = defaultPinTheme.copyWith(
//   decoration: defaultPinTheme.decoration!.copyWith(
//     borderRadius: BorderRadius.all(Radius.circular(2.5.w)),
//     border: Border.all(width: 1.w, color: Get.theme.colorScheme.primary),
//   ),
// );

// final submittedPinTheme = defaultPinTheme.copyWith(
//   decoration: defaultPinTheme.decoration!.copyWith(
//     borderRadius: BorderRadius.all(Radius.circular(2.5.w)),
//     border: Border.all(width: 1.w, color: Get.theme.colorScheme.primary),
//   ),
// );
