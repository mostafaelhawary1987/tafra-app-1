import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:sa3ada/translation/languages.dart';
import 'package:sa3ada/view/widget/ui_element/appbar_widget.dart';


import '../../shared/fonts.dart';

import '../../shared/sizes.dart';

import '../widget/contracts/contract_list_widget.dart';


class ContarctsScreen extends StatefulWidget {
  const ContarctsScreen({Key? key}) : super(key: key);

  @override
  State<ContarctsScreen> createState() => _ContarctsScreenState();
}

class _ContarctsScreenState extends State<ContarctsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        appBar: MainAppBar(title: LanguagesKeys.contract.toString().tr),
        body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                MySizes.verticalMargin * 5,
              ),
              child: Theme(
                data: ThemeData(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent),
                child: Container(
                  height: MySizes.verticalMargin * 2.5,
                  color: Theme.of(context).colorScheme.surface,
                  child: TabBar(
                      tabs: [
                        Tab(
                          text: LanguagesKeys.current.toString().tr,
                        ),
                        Tab(
                          text: LanguagesKeys.previous.toString().tr,
                        ),
                      ],
                      controller: _tabController,
                      physics: const BouncingScrollPhysics(),
                      indicatorColor: Theme.of(context).colorScheme.primary,
                      labelColor: Theme.of(context).colorScheme.primary,
                      unselectedLabelColor:
                          Theme.of(context).colorScheme.secondary,
                      indicatorWeight: 3,
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontFamily: MyFontFamily.medium)),
                ),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MySizes.verticalMargin,
                  horizontal: MySizes.horizontalMargin),
              child: TabBarView(
                controller: _tabController,
                physics: const BouncingScrollPhysics(),
                children: const [
                  ContractListWidget(),
                  ContractListWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );

    // content: DefaultTabController(
    //    length: 2,
    //    initialIndex: 0,
    //   child: Scaffold(
    //       appBar: const ContractMainAppBar(),
    //       body: Padding(
    //        padding: EdgeInsets.symmetric(
    //           vertical: MySizes.verticalMargin,
    //           horizontal: MySizes.horizontalMargin * 0.5),
    //         child: TabBarView(
    //           controller: contractController,
    //           children: [
    //             SingleChildScrollView(
    //               physics: BouncingScrollPhysics(),
    //               child: ListView.separated(
    //         physics: const BouncingScrollPhysics(),
    //         shrinkWrap: true,
    //         itemCount: 10,
    //         itemBuilder: (context, index) {
    //           return CardHomeWidget(
    //             text: 'أسماء ابراهيم',
    //             image: MyImages.user1,
    //             title: 'نظافة',
    //             onTap: () {
    //               // getToScreen(UserDetailsScreen());
    //             },
    //           );
    //         },
    //         separatorBuilder: (context, index) {
    //           return SizedBox(
    //             height: 20.h,
    //           );
    //         },
    //       ),
    //             )
    //           ],
    //         ),
    //       )

    //     ),
    // ));
  }
}
