// ignore_for_file: deprecated_member_use

import 'package:coinspace/config/images.dart';
import 'package:coinspace/config/textstyle.dart';
import 'package:coinspace/view/auth/login_screen.dart';
import 'package:coinspace/view/auth/onboarding_screen.dart';
import 'package:coinspace/view/home/home_view.dart';
import 'package:coinspace/view/market/empty_screen.dart';
import 'package:coinspace/view/profile/app_setting_screen.dart';
import 'package:coinspace/view/profile/notification_screen.dart';
import 'package:coinspace/view/profile/profile_screen.dart';
import 'package:coinspace/view/profile/reward_screen.dart';
import 'package:coinspace/view/profile/scan_screen.dart';
import 'package:coinspace/view/profile/security_screen.dart';
import 'package:coinspace/view/profile/sliver_plan_screen.dart';
import 'package:coinspace/view/profile/platinum_plan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
              Text(
                "Profile",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
              ),
              Row(
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
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: SvgPicture.asset(
                      AppTheme.isLightTheme == true
                          ? DefaultImages.h5
                          : DefaultImages.m8,
                    ),
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              physics: const ClampingScrollPhysics(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Tony Stark",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "tony@stark.com",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: HexColor(AppTheme.secondaryColorString!),
                          ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 12,
                      width: Get.width,
                      decoration: const BoxDecoration(
                        //image: DecorationImage(
                          //image: AssetImage(
                            //AppTheme.isLightTheme == true
                                //? DefaultImages.m4
                                //: DefaultImages.darkPay,
                          //),
                         // fit: BoxFit.fill,
                       // ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var i = 0; i < 8; i++)
                          GestureDetector(
                            onTap: () {
                              if (i == 0) {
                                Get.to(
                                  const EmptyScreen(),
                                  transition: Transition.rightToLeft,
                                );
                              } else if (i == 1) {
                                Get.to(
                                  const SilverPlanScreen(),
                                  transition: Transition.rightToLeft,
                                );
                              } else if (i == 2) {
                                Get.to(
                                  const PlatinumPlanScreen(),
                                  transition: Transition.rightToLeft,
                                );
                              } else if (i == 3) {
                                Get.to(
                                  const AppSettingScreen(),
                                  transition: Transition.rightToLeft,
                                );
                              } else if (i == 4) {
                                Get.to(
                                  const NotificationScreen(),
                                  transition: Transition.rightToLeft,
                                );
                              } else if (i == 5) {
                                Get.to(
                                  const SecurityScreen(),
                                  transition: Transition.rightToLeft,
                                );
                              }
                              else if (i == 6) {
                                //Get.offAll(
                                Get.to(
                                  const EmptyScreen(),
                                  transition: Transition.rightToLeft,
                                );
                              }
                              else if (i == 7) {
                                //Get.offAll(
                                Get.to(
                                  const LoginScreen(),
                                  transition: Transition.rightToLeft,
                                );
                              }
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: AppTheme.isLightTheme == true
                                            ? HexColor(
                                                AppTheme.lightGrayString!)
                                            : HexColor(
                                                AppTheme.darkGrayString!),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          i == 0
                                              ? DefaultImages.m18
                                              : i == 1
                                                  ? DefaultImages.m19
                                                  : i == 2
                                                      ? DefaultImages.m9
                                                      : i == 3
                                                          ? DefaultImages.m17
                                                          : i == 4
                                                              ? DefaultImages
                                                                  .m20
                                              : i == 5
                                              ? DefaultImages
                                          .m24
                                              : i == 6
                                              ? DefaultImages
                                          .m24
                                              : DefaultImages
                                          .m24,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Text(
                                      i == 0
                                          ? "Profile"
                                          : i == 1
                                              ? "Silver Plan"
                                              : i == 2
                                                  ? "Platinum Plan"
                                          : i == 3
                                          ? "App Settings"
                                          : i == 4
                                      ? "Notifications"
                                          : i == 5
                                                          ? "Security"
                                          : i == 6
                                          ? "Support"
                                            : "Logout",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Divider(
                                  height: 1,
                                  color:
                                      HexColor(AppTheme.secondaryColorString!)
                                          .withOpacity(0.2),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
