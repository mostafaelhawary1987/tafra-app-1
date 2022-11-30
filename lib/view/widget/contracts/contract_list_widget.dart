import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sa3ada/view/widget/contracts/contract_card_widget.dart';

class ContractListWidget extends StatelessWidget {
  const ContractListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ContractCardWidget();
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 20.h,
        );
      },
    );
  }
}
