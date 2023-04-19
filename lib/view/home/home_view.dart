// ignore_for_file: deprecated_member_use

import 'package:coinspace/config/images.dart';
import 'package:coinspace/config/textstyle.dart';
import 'package:coinspace/controller/home_controller.dart';
import 'package:coinspace/view/home/card.dart';
import 'package:coinspace/view/home/top_move_screen.dart';
import 'package:coinspace/view/market/about_screen.dart';
import 'package:coinspace/view/market/bitcoin_screen.dart';
import 'package:coinspace/view/market/empty_screen.dart';
import 'package:coinspace/view/market/lifechecker_screen.dart';
import 'package:coinspace/view/market/share_sheet.dart';
import 'package:coinspace/view/profile/scan_screen.dart';
import 'package:coinspace/widget/about_iwealth_view.dart';
import 'package:coinspace/widget/coin_view.dart';
import 'package:coinspace/widget/lifechecker_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top + 15),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Get.dialog(
                    const ScanScreen(),
                  );
                },
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(
                    DefaultImages.h24,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  Get.dialog(
                    const EmptyScreen(),
                  );
                },
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(
                    AppTheme.isLightTheme == true
                        ? DefaultImages.h5
                        : DefaultImages.m8,
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Portfolio Overview",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: CardView(),
                  ),
                  const SizedBox(height: 25),




                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Quick links",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var i = 0; i < 1; i++)
                          //for (var i = 0; i < 2; i++)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: AboutiWealthView(
                              image: i == 0
                                  ? DefaultImages.h14b
                                  : DefaultImages.h19b,
                              text1: i == 0 ? "About iWealth" : "Your SD Box",
                              text2: i == 0 ? "Read more" : "Continue",
                              text3: i == 0 ? ">" : ">",
                              text4: i == 0 ? "" : "",
                            ),
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        const AboutScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            //"Cards/Accounts",
                            "Signals",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                          ),
                          Text(
                            "View all",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      HexColor(AppTheme.secondaryColorString!),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),





                  const SizedBox(height: 15),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: 5,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 14),
                          child: Container(
                            height: 140,
                            width: 132,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: AppTheme.isLightTheme == true
                                  ? HexColor(AppTheme.lightGrayString!)
                                  : HexColor(AppTheme.darkGrayString!),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                          index == 0
                                              ? DefaultImages.h20
                                              : index == 1
                                                  ? DefaultImages.h25
                                                  : DefaultImages.h22,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                        width: 50.45,
                                        child: Image.asset(
                                          DefaultImages.h30,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            index == 0
                                                ? "FLOW"
                                                : index == 1
                                                    ? "SAND"
                                                    : "LUNA",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                          ),
                                          Text(
                                            "/USD",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: HexColor(AppTheme
                                                      .secondaryColorString!),
                                                ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        index == 0
                                            ? "\$5.89"
                                            : index == 1
                                                ? "\$3.31"
                                                : "\$101.31",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: HexColor(AppTheme
                                                  .secondaryColorString!),
                                            ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    index == 0
                                        ? "-17.3%"
                                        : index == 1
                                            ? "-5.14%"
                                            : "-2.12%",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: HexColor(
                                              AppTheme.redColorString!),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  //const SizedBox(height: 30),







                  const SizedBox(height: 1),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var i = 0; i < 1; i++)
                        //for (var i = 0; i < 2; i++)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: LifecheckerView(
                              image: i == 0
                                  ? DefaultImages.h14b
                                  : DefaultImages.h19b,
                              text1: i == 0 ? "Life Checker" : "",
                              text2: i == 0 ? "Read more" : "Continue",
                              text3: i == 0 ? ">" : ">",
                              text4: i == 0 ? "" : "",
                            ),
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        const AboutScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [


                        ],
                      ),
                    ),
                  ),




   /*




                  const SizedBox(height: 1),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var i = 0; i < 1; i++)
                        //for (var i = 0; i < 2; i++)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: CoinView(
                              image: i == 0
                                  ? DefaultImages.h14b
                                  : DefaultImages.h19b,
                              text1: i == 0 ? "About iWealth" : "Your SD Box",
                              text2: i == 0 ? "Read more" : "Continue",
                              text3: i == 0 ? ">" : ">",
                              text4: i == 0 ? "" : "",
                            ),
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        const AboutScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [





                        ],
                      ),
                    ),
                  ),

*/


/*

                  //const SizedBox(height: 25),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var i = 0; i < 1; i++)
                        //for (var i = 0; i < 2; i++)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: CoinView(
                              image: i == 0
                                  ? DefaultImages.h14b
                                  : DefaultImages.h19b,
                              text1: i == 0 ? "About iWealth" : "Your SD Box",
                              text2: i == 0 ? "Read more" : "Continue",
                              text3: i == 0 ? ">" : ">",
                              text4: i == 0 ? "" : "",
                            ),
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        const AboutScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [


                        ],
                      ),
                    ),
                  ),





                  */






                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
