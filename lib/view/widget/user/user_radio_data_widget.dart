import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../shared/images.dart';
import '../../../shared/sizes.dart';
import '../../../translation/languages.dart';
import '../ui_element/text_field_form_widget.dart';

class UserRadioDataWidget extends StatefulWidget {
  UserRadioDataWidget({Key? key}) : super(key: key);

  @override
  State<UserRadioDataWidget> createState() => _UserRadioDataWidgetState();
}

class _UserRadioDataWidgetState extends State<UserRadioDataWidget> {
  DateTime? date;

  String getText() {
    if (date == null) {
      return 'حدد اليوم';
    } else {
      return DateFormat('MM/dd/yyyy').format(date!);
      // return '${date.month}/${date.day}/${date.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MySizes.horizontalMargin * 0.5),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(LanguagesKeys.start_date.toString().tr,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Theme.of(context).colorScheme.primary)),
            SizedBox(
              height: 15.h,
            ),
            CustomTextFormField(
              readOnly: true,
              hintText: getText(),
              suffixImage: MyImages.dateForm,
              suffImageScal: 4.h,
              suffixOnTap: () => pickDate(context),
            )
          ]),
    );
  }

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return;

    setState(() => date = newDate);
  }
}
