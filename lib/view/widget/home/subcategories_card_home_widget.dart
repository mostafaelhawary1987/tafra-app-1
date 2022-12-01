import 'package:flutter/material.dart';
import '../../../shared/fonts.dart';
import '../../../shared/sizes.dart';

class SubcategoriesCardHomeWidget extends StatelessWidget {
  final String subcategoryName;
  final String subcategoryImage;

  const SubcategoriesCardHomeWidget({
    Key? key,
    required this.subcategoryName,
    required this.subcategoryImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(bottom: MySizes.verticalMargin * .6),
        height: MySizes.horizontalMargin * 4.5,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            borderRadius: MySizes.recBorderRadius),
        child: Column(
          children: [
            Center(
                child: Image.asset(
              subcategoryImage,
              // scale: 2.2,
              fit: BoxFit.fill,
            )),
             Flexible(
          child: Text(subcategoryName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontFamily: MyFontFamily.medium))),
          ],
        ),
      ),
    );
  }
}
