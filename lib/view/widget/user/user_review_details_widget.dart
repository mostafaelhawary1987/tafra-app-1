import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/shared/static_data.dart';
import 'package:sa3ada/view/widget/user/user_review_card_widget.dart';
import '../../../shared/sizes.dart';
import '../../../translation/languages.dart';

class UserReviewDetailsWidget extends StatelessWidget {
  const UserReviewDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MySizes.horizontalMargin * 0.5),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(LanguagesKeys.reviews.toString().tr,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Theme.of(context).colorScheme.primary)),
            SizedBox(
              height: 15.h,
            ),
            ListView.builder(
                itemCount: userReview.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return UserReviewCardWidget(
                    name: userReview[index].name,
                    review: userReview[index].review,
                    rate: userReview[index].rate,
                    rateNumber: userReview[index].rateNumber,
                  );
                }),
          ]),
    );
  }
}
