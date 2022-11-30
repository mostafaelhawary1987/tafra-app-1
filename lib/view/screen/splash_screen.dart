import 'package:flutter/material.dart';

import 'package:sa3ada/shared/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(
        child: Image.asset(
          MyImages.logo,
          scale: 1.2,
        ),
      ),
    );
  }
}
