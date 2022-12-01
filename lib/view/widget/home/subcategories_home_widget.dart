import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../shared/sizes.dart';
import '../../../shared/static_data.dart';
import '../../../translation/languages.dart';
import '../categories_card_widget.dart';
import '../ui_element/appbar_widget.dart';
import '../ui_element/custom_scaffold.dart';

class SubCategoriesHomeWidegt extends StatelessWidget {
  const SubCategoriesHomeWidegt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: subcate.length,
        crossAxisCount: 2,
        mainAxisSpacing: 0.2.h,
        crossAxisSpacing: 15.w,
        // padding: EdgeInsetsDirectional.only(start: MySizes.horizontalMargin),
        itemBuilder: (context, index) => SizedBox(
              height: MySizes.verticalMargin * 7.8.h,
              width: MySizes.horizontalMargin * 2.w,
              child: CategoryCardSectionWidget(
                categoryImage: subcate[index].submcateimage,
                categoryName: subcate[index].submcatename,
              ),
            ));
  }
}
