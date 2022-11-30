import 'package:flutter/material.dart';

import '../../../shared/fonts.dart';
import '../../../shared/sizes.dart';

class PaymentRadioWidget<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String title;
  final ValueChanged<T?> onChanged;

  const PaymentRadioWidget({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;

    return InkWell(
      onTap: () => onChanged(value),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: SizedBox(
        height: MySizes.verticalMargin * 2,

        // margin: EdgeInsets.symmetric(horizontal: MySizes.verticalMargin * .5),
        child: Row(
          children: [
            CircleAvatar(
              radius: MySizes.verticalMargin * .5,
              backgroundColor: Theme.of(context).colorScheme.surface,
              child: CircleAvatar(
                radius: MySizes.verticalMargin * .3,
                backgroundColor: isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.surface,
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                  start: MySizes.horizontalMargin / 3),
              child: Text(
                title,
                style: Theme.of(context).textTheme.caption?.copyWith(
                    fontFamily: MyFontFamily.bold,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
