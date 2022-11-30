import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sa3ada/shared/images.dart';
import '../../../shared/sizes.dart';

class ContractCardWidget extends StatelessWidget {
  const ContractCardWidget({Key? key}) : super(key: key);

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

            focusColor: Theme.of(context).colorScheme.primary,
            selectedColor: Theme.of(context).colorScheme.primary,
            selectedTileColor: Theme.of(context).colorScheme.primary,
            contentPadding:
                EdgeInsets.symmetric(horizontal: MySizes.verticalMargin / 2),
            title: Text('امينة السيد',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Theme.of(context).colorScheme.primary)),
            subtitle: Text('نظافة',
                style: Theme.of(context).textTheme.overline!.copyWith(
                    color: Theme.of(context).colorScheme.primaryContainer)),
            leading: Image.asset(
              MyImages.user2,
              height: MySizes.verticalMargin * 3,
              fit: BoxFit.fill,
            ),
            trailing: RatingBarIndicator(
              rating: 2.55,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 3,
              itemSize: 15.0,
              // direction: Axis.vertical,
            ),
          ),
        ));
  }
}
