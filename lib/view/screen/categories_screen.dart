import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../shared/sizes.dart';
import '../../shared/static_data.dart';
import '../../translation/languages.dart';
import '../widget/categories_card_widget.dart';
import '../widget/ui_element/appbar_widget.dart';
import '../widget/ui_element/custom_scaffold.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

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
              child: Column(
                children: [
                  MasonryGridView.count(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: categories.length,
                      crossAxisCount: 2,
                      mainAxisSpacing: 0.2.h,
                      crossAxisSpacing: 15.w,
                      // padding: EdgeInsetsDirectional.only(start: MySizes.horizontalMargin),
                      itemBuilder: (context, index) => SizedBox(
                            height: MySizes.verticalMargin * 7.8.h,
                            width: MySizes.horizontalMargin * 2.w,
                            child: CategoryCardSectionWidget(
                              categoryImage: categories[index].image,
                              categoryName: categories[index].name,
                            ),
                          )),
                ],
              ),
            )));
  }
}
