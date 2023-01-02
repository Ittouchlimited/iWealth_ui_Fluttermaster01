import 'package:coinspace/config/images.dart';
import 'package:coinspace/config/textstyle.dart';
import 'package:coinspace/controller/home_controller.dart';
import 'package:coinspace/view/assets/assets_view.dart';
import 'package:coinspace/view/home/home_view.dart';
import 'package:coinspace/view/market/market_view.dart';
import 'package:coinspace/view/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeController.scaffoldKey,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      bottomNavigationBar: SizedBox(
        height: 60 + MediaQuery.of(context).padding.top,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                tab(
                  homeController.tabFlag.value == 0
                      ? DefaultImages.tab1Select
                      : DefaultImages.tab1,
                  "Home",
                  homeController.tabFlag.value == 0
                      ? HexColor(AppTheme.primaryColorString!)
                      : HexColor(AppTheme.secondaryColorString!),
                  () {
                    homeController.tabFlag.value = 0;
                  },
                ),
                tab(
                  homeController.tabFlag.value == 1
                      ? DefaultImages.tab2Select
                      : DefaultImages.tab2,
                  "Assets",
                  homeController.tabFlag.value == 1
                      ? HexColor(AppTheme.primaryColorString!)
                      : HexColor(AppTheme.secondaryColorString!),
                  () {
                    homeController.tabFlag.value = 1;
                  },
                ),
                tab(
                  homeController.tabFlag.value == 2
                      ? DefaultImages.tab3Select
                      : DefaultImages.tab3,
                  "Market",
                  homeController.tabFlag.value == 2
                      ? HexColor(AppTheme.primaryColorString!)
                      : HexColor(AppTheme.secondaryColorString!),
                  () {
                    homeController.tabFlag.value = 2;
                  },
                ),
                tab(
                  homeController.tabFlag.value == 3
                      ? DefaultImages.tab4Select
                      : DefaultImages.tab4,
                  "Profile",
                  homeController.tabFlag.value == 3
                      ? HexColor(AppTheme.primaryColorString!)
                      : HexColor(AppTheme.secondaryColorString!),
                  () {
                    homeController.tabFlag.value = 3;
                  },
                )
              ],
            ),
          ),
        ),
      ),
      body: Obx(
        () => homeController.tabFlag.value == 0
            ? const HomeView()
            : homeController.tabFlag.value == 1
                ? const AssetsView()
                : homeController.tabFlag.value == 2
                    ? const MarketView()
                    : const ProfileView(),
      ),
    );
  }

  Widget tab(String image, String text, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: SvgPicture.asset(
              image,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}
