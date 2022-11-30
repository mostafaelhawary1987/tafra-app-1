import 'package:flutter/material.dart';


import '../../../../shared/images.dart';


class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Navigator.of(context).pop,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Image.asset(MyImages.back,
      ),
    );
  }
}
