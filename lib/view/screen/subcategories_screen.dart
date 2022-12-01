import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sa3ada/shared/fonts.dart';
import 'package:sa3ada/shared/images.dart';
import '../../../shared/sizes.dart';
import '../../../shared/static_data.dart';
import '../../../translation/languages.dart';
import '../widget/home/subcategories_card_home_widget.dart';
import '../widget/home/subcategories_home_widget.dart';
import '../widget/ui_element/appbar_widget.dart';
import '../widget/ui_element/custom_scaffold.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        content: Scaffold(
            appBar: MainAppBar(
              title: LanguagesKeys.categories.toString().tr,
            ),
            body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    vertical: MySizes.verticalMargin,
                    horizontal: MySizes.horizontalMargin * 0.5),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 100.h,
                            width: 100.w,
                            
                            child: Image.asset(MyImages.cate1),
                          ),
                        ),
                        Expanded(
                          flex:9,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(LanguagesKeys.house_cleaning.toString().tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                          fontFamily: MyFontFamily.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                Text(
                                    LanguagesKeys.house_cleaning_dec
                                        .toString()
                                        .tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                              ]),
                        )
                      ]),
                      SizedBox(height: 20.h,),
                  const SubCategoriesHomeWidegt()
                ]
                    // )
                    //      mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // children: [
                    // Expanded(
                    //   flex: 2,
                    //   child: Container(
                    //     height: 82.h,
                    //     width: 82.w,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(50.r),
                    //     ),
                    //     child: Image.asset(MyImages.cate1),
                    //   ),
                    // ),
                    //  Expanded(
                    //   flex: 8,
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //             Text(LanguagesKeys.house_cleaning.toString().tr,
                    //       style: Theme.of(context)
                    //           .textTheme
                    //           .subtitle2!
                    //           .copyWith(color: Theme.of(context).colorScheme.primary)),

                    //           Text(LanguagesKeys.house_cleaning_dec.toString().tr,
                    //       style: Theme.of(context)
                    //           .textTheme
                    //           .subtitle2!
                    //           .copyWith(color: Theme.of(context).colorScheme.primary)),
                    // ],
                    // ),
                    // ]),

                    //     ]),

                    // ],

                    ))));
  }
}
