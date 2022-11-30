import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/images.dart';
import '../../../shared/sizes.dart';
import '../../../translation/languages.dart';

class UserPersonDetailsWidget extends StatelessWidget {
  const UserPersonDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MySizes.verticalMargin,
          horizontal: MySizes.horizontalMargin * 0.5),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              MyImages.user3,
              width: 114.w,
              height: 114.h,
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 18.h,
                ),
                Text('أسماء ابراهيم ممدوح',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Theme.of(context).colorScheme.primary)),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: 2.55,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 15.0,
                      // direction: Axis.vertical,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text("2.55 / 5",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).colorScheme.primary)),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MySizes.verticalMargin * 4,
                      child: Text(LanguagesKeys.age.toString().tr,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer)),
                    ),
                    Text('27',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).colorScheme.primary)),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MySizes.verticalMargin * 4,
                      child: Text(LanguagesKeys.specialties.toString().tr,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer)),
                    ),
                    Text("تنظيف المنازل",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).colorScheme.primary)),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            )
          ]),
    );
  }
}
