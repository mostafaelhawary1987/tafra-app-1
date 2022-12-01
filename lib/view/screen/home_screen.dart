import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sa3ada/shared/get_navigate_functions.dart';

import 'package:sa3ada/shared/static_data.dart';
import 'package:sa3ada/view/screen/user/user_details_screen.dart';
import 'package:sa3ada/view/widget/home/carousel_widget.dart';
import 'package:sa3ada/view/widget/home/categories_home_widget.dart';

import '../../shared/sizes.dart';

import '../widget/cate_card_home_widget.dart';
import '../widget/ui_element/appbar_widget.dart';
import '../widget/ui_element/custom_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        content: Scaffold(
            appBar: const MainAppBar(
              title: '',
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  vertical: MySizes.verticalMargin,
                  horizontal: MySizes.horizontalMargin * 0.5),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                children: [
                  CarouselWidget(),
                  CategoriesHomeWidget(),
                  // ListView.separated(
                  //   physics: const BouncingScrollPhysics(),
                  //   shrinkWrap: true,
                  //   itemCount: cateHome.length,
                  //   itemBuilder: (context, index) {
                  //     return const
                  //   },
                  //   separatorBuilder: (context, index) {
                  //     return SizedBox(
                  //       height: 20.h,
                  //     );
                  //   },
                  // ),

                  // ListView.separated(
                  //   physics: const BouncingScrollPhysics(),
                  //   shrinkWrap: true,
                  //   itemCount: userHome.length,
                  //   itemBuilder: (context, index) {
                  //     return CardHomeWidget(
                  //       name: userHome[index].name,
                  //       image: userHome[index].image,
                  //       title: userHome[index].title,
                  //       rate: userHome[index].rate,
                  //       onTap: () {
                  //         getToScreen(const UserDetailsScreen());
                  //       },
                  //     );
                  //   },
                  //   separatorBuilder: (context, index) {
                  //     return SizedBox(
                  //       height: 20.h,
                  //     );
                  //   },
                  // ),
                ],
              ),
            )));
  }
}
