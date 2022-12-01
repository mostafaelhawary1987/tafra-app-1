import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sa3ada/view/widget/home/categories_tile_widget.dart';
import 'package:sa3ada/view/widget/home/subcategories_home_widget.dart';
import '../../../shared/get_navigate_functions.dart';
import '../../../shared/static_data.dart';
import '../../screen/subcategories_screen.dart';


class CategoriesHomeWidget extends StatelessWidget {
  const CategoriesHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          
          itemBuilder: (context, index) {
            return CategoriesTileWidget(
              text: cateHome[index].text!,
              image: cateHome[index].image!,
              subtitle: cateHome[index].subtitle!,
              onTap: () {
                 getToScreen( const SubCategoriesScreen());
              },
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10.h,
            );
          },
          itemCount: cateHome.length),
    );
  }
}
