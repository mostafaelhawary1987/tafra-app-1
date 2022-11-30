import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/fonts.dart';
import '../../../shared/sizes.dart';

class UserReviewCardWidget extends StatelessWidget {
  final String name;
  final String review;
  final String rateNumber;
  final double rate;
  const UserReviewCardWidget(
      {Key? key,
      required this.name,
      required this.review,
      required this.rateNumber,
      required this.rate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 10),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(MySizes.rectRadius),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Expanded(
                //   flex: 1,
                //   child: CircleAvatar(
                //     radius: 25.r,
                //     backgroundColor: Colors.transparent,
                //     backgroundImage: const AssetImage(
                //       MyImages.user2,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   width: 15.w,
                // ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.overline?.copyWith(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            fontFamily: MyFontFamily.medium),
                      ),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: rate,
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
                          Text(rateNumber,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary)),
                        ],
                      ),
                      Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        review,
                        style: Theme.of(context).textTheme.overline?.copyWith(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            fontFamily: MyFontFamily.regular),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
