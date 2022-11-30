import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/sizes.dart';

class CardHomeWidget extends StatelessWidget {
  final String name;
  final String image;
  final String title;
  final void Function()? onTap;
  final double rate;
  const CardHomeWidget(
      {Key? key,
      required this.name,
      required this.title,
      required this.image,
      required this.rate,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: MySizes.verticalMargin * 2,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(MySizes.rectRadius),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1),
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(MySizes.rectRadius),
          child: ListTile(
            // dense: true,
            // minLeadingWidth: 25.5,
            onTap: onTap,
            focusColor: Theme.of(context).colorScheme.primary,
            selectedColor: Theme.of(context).colorScheme.primary,
            selectedTileColor: Theme.of(context).colorScheme.primary,
            contentPadding:
                EdgeInsets.symmetric(horizontal: MySizes.verticalMargin / 2),
            title: Text(name,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Theme.of(context).colorScheme.primary)),
            subtitle: Text(title,
                style: Theme.of(context).textTheme.overline!.copyWith(
                    color: Theme.of(context).colorScheme.primaryContainer)),
            leading: Image.asset(
              image,
              height: MySizes.verticalMargin * 3,
              width: 54.w,
            ),
            trailing: RatingBarIndicator(
              rating: rate,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 4,
              itemSize: 15.0,
              // direction: Axis.vertical,
            ),
          ),
        ));
  }
}
