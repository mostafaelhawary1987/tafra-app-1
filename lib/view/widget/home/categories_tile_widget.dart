import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/sizes.dart';

class CategoriesTileWidget extends StatelessWidget {
  final String text;
  final String image;
  final String subtitle;
  final void Function()? onTap;
  const CategoriesTileWidget(
      {Key? key,
      required this.text,
      required this.subtitle,
      required this.image,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: MySizes.horizontalMargin / 2),
        height: MySizes.horizontalMargin * 3,
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
            onTap: onTap,
            focusColor: Theme.of(context).colorScheme.primary,
            selectedColor: Theme.of(context).colorScheme.primary,
            selectedTileColor: Theme.of(context).colorScheme.primary,
            contentPadding: EdgeInsets.zero,
            title: Text(text,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Theme.of(context).colorScheme.primary)),
            subtitle: Text(subtitle,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Theme.of(context).colorScheme.secondary)),
            leading: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: MySizes.verticalMargin / 4),
              child: Container(
                width: 50,
                height: 100,
                child: Image.asset(image),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15.sp,
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.6),
                ),
              ),
            ),
          ),
        ));
  }
}
