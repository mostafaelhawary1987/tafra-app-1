import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/fonts.dart';

import '../../../shared/sizes.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const ElevatedButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MySizes.buttonHeight,
        margin: EdgeInsets.only(
            bottom: MySizes.verticalMargin / 1.7,
            top: MySizes.verticalMargin / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          gradient: const LinearGradient(
            colors: [Color(0xff2b3d85), Color(0xff16a45c)],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontFamily: MyFontFamily.bold),
            ),
          ),
        )

        //  Material(
        //   elevation: 0,
        //   color: LinearGradient(
        //     colors: [Color(0xff5f53d5), Color(0xff877bfb)],
        //     begin: Alignment.bottomRight,
        //     end: Alignment.topLeft,
        //   ),
        //   shape: RoundedRectangleBorder(
        //       side: BorderSide.none,
        //       // side: BorderSide(
        //       //     color:Colors.transparent, width: 1, style: BorderStyle.solid),
        //       borderRadius: BorderRadius.circular(50)),
        //   child: InkWell(
        //       onTap: onTap,
        //       splashColor: Colors.white,
        //       highlightColor: Colors.black12,
        //       borderRadius: BorderRadius.circular(50.r),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(50.r),
        //           color: color,
        //           border: Border.all(
        //             color: borderColor,
        //             width: 0.0,
        //           ),
        //         ),
        //         height: 50.h,
        //         width: MediaQuery.of(context).size.width,
        //         // width: 230.w,

        //         child: Center(
        //           child: Text(
        //             label,
        //             style: TextStyle(
        //               fontFamily: "ibmbold",
        //               fontSize: 16.sp,
        //               color: colortext,
        //             ),
        //           ),
        //         ),
        //       )),
        // ),
        );
  }
}
