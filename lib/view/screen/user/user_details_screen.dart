import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/view/screen/user/user_order_inprogress_screen.dart';
import 'package:sa3ada/view/widget/ui_element/appbar_widget.dart';
import 'package:sa3ada/view/widget/ui_element/custom_scaffold.dart';
import '../../../shared/get_navigate_functions.dart';
import '../../../shared/sizes.dart';
import '../../../translation/languages.dart';
import '../../widget/ui_element/elevated_button_widget.dart';
import '../../widget/user/user_person_details_widget.dart';
import '../../widget/user/user_review_details_widget.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      content: Scaffold(
          appBar: MainAppBar(title: LanguagesKeys.details.toString().tr),
          body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(children: [
                const UserPersonDetailsWidget(),

                Container(
                  height: 2.h,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                // SizedBox(
                //   height: 15.h,
                // ),

                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MySizes.verticalMargin,
                      horizontal: MySizes.horizontalMargin * 0.5),
                  child: Text(
                      "تقوم بتنضيف غرف النوم , الليفينج, الحمامات , التراسات , البلوكونات و أسطح المطبخ مع غسيل الاطباق بمواد تنظيف لاتسبب أزمة صحية أو مضاعفات على أفراد البيت مثل :حساسية الأنف و الربو و غيرها ",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color:
                              Theme.of(context).colorScheme.primaryContainer)),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //       // vertical: MySizes.verticalMargin,
                //       horizontal: MySizes.horizontalMargin * 0.5),
                //   child: Text(
                //       ' تقوم تنظيف كافة أدوات المطبخ والأجهزة الكهربائية كالثلاجة والميكرويف من الداخل والخارج، بالإضافة إلى تنظيف الأطباق والخزائن وأبوابها والرفوف من الداخل وذلك باستعمال أدوات التنظيف الفعَّالة',
                //       maxLines: 5,
                //       overflow: TextOverflow.ellipsis,
                //       style: Theme.of(context).textTheme.subtitle2!.copyWith(
                //           color:
                //               Theme.of(context).colorScheme.primaryContainer)),
                // ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //       // vertical: MySizes.verticalMargin,
                //       horizontal: MySizes.horizontalMargin * 0.5),
                //   child: Text(
                //       "كما تنظيف حمام البيت في حال تم طلب  ذلك منها، ويكون التنظيف باستخدام أدوات ووسائل التنظيف التي تلائم حاجة الحمام، وكذلك استعمال مواد التنظيف التي لا تسبب أزمة صحية أو مضاعفات على أفراد البيت، مثل: حساسية الأنف والربو وغيرها",
                //       maxLines: 5,
                //       overflow: TextOverflow.ellipsis,
                //       style: Theme.of(context).textTheme.subtitle2!.copyWith(
                //           color:
                //               Theme.of(context).colorScheme.primaryContainer)),
                // ),
                Container(
                  height: 2.h,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const UserReviewDetailsWidget(),

                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MySizes.verticalMargin / 4,
                      horizontal: MySizes.horizontalMargin / 2),
                  child: ElevatedButtonWidget(
                    title: LanguagesKeys.order_now.toString().tr,
                    onTap: () {
                      getToScreen(const UserInprogressScreen());
                    },
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
              ]))),
    );
  }
}
