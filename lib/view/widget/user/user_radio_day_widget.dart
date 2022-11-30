import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/shared/sizes.dart';
import 'package:sa3ada/translation/languages.dart';

class UserRadioDayWidget extends StatefulWidget {
  const UserRadioDayWidget({Key? key}) : super(key: key);
  @override
  State<UserRadioDayWidget> createState() =>
      _UserRadioDayWidgetState();
}

/// This is the private State class that goes with UserRadioDayWidget.
class _UserRadioDayWidgetState
    extends State<UserRadioDayWidget> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Padding(
         padding: EdgeInsets.symmetric(
          horizontal: MySizes.horizontalMargin *0.5),
         child: Text(LanguagesKeys.contracting.toString().tr,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Theme.of(context).colorScheme.primary)),
       ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MySizes.verticalMargin *0.5,
                  vertical: MySizes.verticalMargin),
                // width: MySizes.verticalMargin * 4,
                height: MySizes.horizontalMargin * 1.5,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1),
                  ],
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(
                    color: (value == 1)
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.background,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      value = 1;
                    });
                  },
                  child: Center(
                    child: Text(
                      LanguagesKeys.one_day.toString().tr,
                      style: TextStyle(
                        color: (value == 1) 
                        ? Theme.of(context).colorScheme.primary 
                        : Theme.of(context).colorScheme.primaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MySizes.verticalMargin *0.5,
                  vertical: MySizes.verticalMargin),
                // width: MySizes.verticalMargin * 4,
                height: MySizes.horizontalMargin * 1.5,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1),
                  ],
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(
                    color: (value == 2)
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.background,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      value = 2;
                    });
                  },
                  child: Center(
                    child: Text(
                      LanguagesKeys.fixed_duration.toString().tr,
                      style: TextStyle(
                        color: (value == 2) 
                        ? Theme.of(context).colorScheme.primary 
                        : Theme.of(context).colorScheme.primaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
            ),
           
           
          ],
        ),
     
      
      ],
    );
  }
}
