import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



import 'package:sa3ada/view/screen/contracts_screen.dart';
import 'package:sa3ada/view/screen/home_screen.dart';
import 'package:sa3ada/view/screen/payment_screen.dart';



import '../../shared/images.dart';
import '../../shared/sizes.dart';
import '../widget/ui_element/custom_scaffold.dart';
import 'categories_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _allPage = 0;
  final GlobalKey _menKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      const HomeScreen(),
      const CategoryScreen(),
      const PaymentScreen(),
      const ContarctsScreen(),
    ];

    return ScaffoldWidget(
      content: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          // buttonBackgroundColor: Theme.of(context).colorScheme.primary,
          backgroundColor: Theme.of(context).colorScheme.background,
          key: _menKey,
          animationCurve: Curves.easeInOut,
          index: 0,
          items: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                MyImages.home,
                color: Theme.of(context).colorScheme.primary,
                width: MySizes.verticalMargin * 1.3,
                height: MySizes.verticalMargin * 1.3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                MyImages.category,
                color: Theme.of(context).colorScheme.primary,
                width: MySizes.verticalMargin * 1.3,
                height: MySizes.verticalMargin * 1.3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                MyImages.wallet,
                color: Theme.of(context).colorScheme.primary,
                width: MySizes.verticalMargin * 1.1,
                height: MySizes.verticalMargin * 1.1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                MyImages.order,
                color: Theme.of(context).colorScheme.primary,
                width: MySizes.verticalMargin * 1.3,
                height: MySizes.verticalMargin * 1.3,
              ),

              // BottomNavigationBarItem(
              //   label: LanguagesKeys.home.toString().tr,
              //   icon:
              //   ),
              //   activeIcon: Padding(
              //     padding: const EdgeInsets.only(bottom: 5),
              //     child: SvgPicture.asset(
              //       MyImages.home,
              //       color: Theme.of(context).colorScheme.primary,
              //       width: MySizes.verticalMargin * 1.3,
              //       height: MySizes.verticalMargin * 1.3,
              //     ),
              //   ),
              // ),
              // BottomNavigationBarItem(
              //   label: LanguagesKeys.categoies.toString().tr,
              //   icon: Padding(
              //     padding: const EdgeInsets.only(bottom: 5),
              //     child: SvgPicture.asset(
              //       MyImages.category,
              //       color: Theme.of(context)
              //           .colorScheme
              //           .secondary
              //           .withOpacity(0.6),
              //       width: MySizes.verticalMargin * 1.3,
              //       height: MySizes.verticalMargin * 1.3,
              //     ),
              //   ),
              //   activeIcon: Padding(
              //     padding: const EdgeInsets.only(bottom: 5),
              //     child: SvgPicture.asset(
              //       MyImages.category,
              //       color: Theme.of(context).colorScheme.primary,
              //       width: MySizes.verticalMargin * 1.3,
              //       height: MySizes.verticalMargin * 1.3,
              //     ),
              //   ),
              // ),
              // BottomNavigationBarItem(
              //   label: LanguagesKeys.giftMyAccount.toString().tr,
              //   icon: Padding(
              //     padding: const EdgeInsets.only(bottom: 5),
              //     child: GetBuilder<HomeController>(builder: (homecontroller) {
              //       return Badge(
              //         badgeColor: Color(0xff4BD12A),
              //         position: BadgePosition.topStart(top: 0, start: 0),
              //         animationDuration: const Duration(milliseconds: 300),
              //         animationType: BadgeAnimationType.slide,
              //         child: SvgPicture.asset(
              //           MyImages.giftAccount,
              //           color: Theme.of(context)
              //               .colorScheme
              //               .secondary
              //               .withOpacity(0.6),
              //           width: MySizes.verticalMargin * 1.3,
              //           height: MySizes.verticalMargin * 1.3,
              //         ),
              //       );
              //     }),
              //   ),
              //   activeIcon: Padding(
              //     padding: const EdgeInsets.only(bottom: 5),
              //     child: SvgPicture.asset(
              //       MyImages.giftAccount,
              //       color: Theme.of(context).colorScheme.primary,
              //       width: MySizes.verticalMargin * 1.3,
              //       height: MySizes.verticalMargin * 1.3,
              //     ),
              //   ),
              // ),
              // BottomNavigationBarItem(
              //   label: LanguagesKeys.cart.toString().tr,
              //   icon: Padding(
              //     padding: const EdgeInsets.only(bottom: 5),
              //     child: SvgPicture.asset(
              //       MyImages.cart,
              //       color: Theme.of(context)
              //           .colorScheme
              //           .secondary
              //           .withOpacity(0.6),
              //       width: MySizes.verticalMargin * 1.3,
              //       height: MySizes.verticalMargin * 1.3,
              //     ),
              //   ),
              //   activeIcon: Padding(
              //     padding: const EdgeInsets.only(bottom: 5),
              //     child: SvgPicture.asset(
              //       MyImages.cart,
              //       color: Theme.of(context).colorScheme.primary,
              //       width: MySizes.verticalMargin * 1.3,
              //       height: MySizes.verticalMargin * 1.3,
              //     ),
              //   ),
              // ),
              // BottomNavigationBarItem(
              //   label: LanguagesKeys.myAccount.toString().tr,
              //   icon: Padding(
              //     padding: const EdgeInsets.only(bottom: 5),
              //     child: SvgPicture.asset(
              //       MyImages.userAccount,
              //       color: Theme.of(context)
              //           .colorScheme
              //           .secondary
              //           .withOpacity(0.6),
              //       width: MySizes.verticalMargin * 1.3,
              //       height: MySizes.verticalMargin * 1.3,
              //     ),
              //   ),
              //   activeIcon: Padding(
              //     padding: const EdgeInsets.only(bottom: 5),
              //     child: SvgPicture.asset(
              //       MyImages.userAccount,
              //       color: Theme.of(context).colorScheme.primary,
              //       width: MySizes.verticalMargin * 1.3,
              //       height: MySizes.verticalMargin * 1.3,
              //     ),
              //   ),
              // ),
            )
          ],
          onTap: (index) {
            setState(() {
              _allPage = index;
            });
          },
        ),
        body: tabs[_allPage],
      ),
    );
  }
}
