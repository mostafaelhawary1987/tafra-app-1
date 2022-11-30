import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'package:sa3ada/shared/theme.dart';
import 'package:sa3ada/shared/user_binding.dart';
import 'package:sa3ada/translation/translations.dart';
import 'package:sa3ada/view/screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  UserBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     statusBarColor: Colors.white,
    //     statusBarIconBrightness: Brightness.light,
    //     statusBarBrightness: Brightness.light));
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: Languages(),
          locale: const Locale('ar', 'EG'),
          fallbackLocale: const Locale('en', 'US'),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          initialBinding: UserBinding(),
          theme: MyTheme().getTheme(Brightness.light),
          home: const SplashScreen()),
    );
  }
}
