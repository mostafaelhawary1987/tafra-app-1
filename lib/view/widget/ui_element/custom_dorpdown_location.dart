import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sa3ada/shared/images.dart';

import '../../../controller/main_controller.dart';
import '../../../shared/fonts.dart';

class CustomDropDownLocation extends StatelessWidget {
  const CustomDropDownLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        builder: (controller) => SizedBox(
              width: 200.w,
          
              child: DropdownButtonHideUnderline(
                child: DropdownButtonFormField(
                  value: controller.selectfilter,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 0),
                    // hintStyle: TextStyle(fontSize: 14),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent),
                    ),
                  ),
                  icon: Row(
                    children: [
                      Image.asset(
                        MyImages.locat,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        "القاهرة - مصر الجديدة",
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontFamily: MyFontFamily.bold,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Image.asset(
                        MyImages.sort_down,
                        scale: 3,
                      ),
                    ],
                  ),
                  isExpanded: true,
                  items: [
                    "البحث بالاسم",
                    "البحث بالقسم",
                    "البحث بالدكتور",
                    "البحث بالرقم"
                  ]
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (value) {
                    controller.selectFilter(value: value.toString());
                  },
                ),
              ),
            ));
  }
}
