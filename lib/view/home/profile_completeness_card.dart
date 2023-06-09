// ignore_for_file: deprecated_member_use

import 'package:coinspace/config/images.dart';
import 'package:coinspace/config/textstyle.dart';
import 'package:coinspace/view/auth/add_asset_screen.dart';
import 'package:coinspace/view/auth/add_liability_screen.dart';
import 'package:coinspace/widget/custom_button.dart';
import 'package:coinspace/view/market/share_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileCompletenessCardView extends StatelessWidget {
  const ProfileCompletenessCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.isLightTheme == true
            ? HexColor(AppTheme.lightGrayString!)
            : HexColor(AppTheme.darkGrayString!),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Your NET Worth (NGN)",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      HexColor(AppTheme.secondaryColorString!),
                                ),
                          ),
                          const SizedBox(width: 5),
                         /* SizedBox(
                            height: 16,
                            width: 16,
                            child: SvgPicture.asset(
                              DefaultImages.eye,
                              color: HexColor(AppTheme.secondaryColorString!),
                            ),
                          ) */
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "0.0",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    DefaultImages.h32,
                  ),
                ),
              ],
            ),









            const SizedBox(height: 10),
            Row(
              children: const [


                /*
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    /*
                    Text(
                      "No. of Assets",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: HexColor(AppTheme.secondaryColorString!),
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "5",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: HexColor(AppTheme.greenColorString!),
                          ),
                    ),
                    */
                  ],

                ),

                */




/*
                const SizedBox(width: 10),
                Container(
                  height: 28,
                  width: 1,
                  color:
                      HexColor(AppTheme.secondaryColorString!).withOpacity(0.5),
                ),
                const SizedBox(width: 10),
*/



                /*

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [



                    /*
                    Text(
                      "No. of Liabilities",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: HexColor(AppTheme.secondaryColorString!),
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "2",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: HexColor(AppTheme.redColorString!),
                          ),
                    ),
                    */
                  ],
                ),
*/

/*
                const SizedBox(width: 10),
                Expanded(
                  child: SmallButton(
                    text: "+ Asset",
                    onTap: () {
                      Get.to(
                        const AddAssetScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
/*
                    onTap: () {
                      Get.bottomSheet(
                        bottomCard(
                          DefaultImages.h6,
                          DefaultImages.h7,
                          "Update Portfolio",
                          "Add Asset",
                          "Add Liability",
                        ),
                      );
                    },

 */
                  ),
                ),
                */






/*
                const SizedBox(width: 10),
                Expanded(
                  child: SmallButton(
                    text: "+ Liability",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddLiabilityScreen()),
                      );
                      /*Get.bottomSheet(
                        bottomCard(
                          DefaultImages.h8,
                          DefaultImages.h9,
                          "Transfer",
                          "Deposit",
                          "Withdraw",
                        ),
                      );*/
                    },
                    bg: HexColor(AppTheme.secondaryColorString!),
                  ),
                ),
*/



              ],
            )
          ],
        ),
      ),
    );
  }

  Widget bottomCard(
      String image, String image1, String text1, String text2, String text3) {
    return Container(
      height: Get.height / 3.5,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppTheme.isLightTheme == true
            ? Colors.white
            : const Color(0xff1C222E),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            text1,
            style: Theme.of(Get.context!).textTheme.bodyText1!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    text2,
                    style: Theme.of(Get.context!).textTheme.bodyText1!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: HexColor(AppTheme.secondaryColorString!),
                        ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          image1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    text3,
                    style: Theme.of(Get.context!).textTheme.bodyText1!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: HexColor(AppTheme.secondaryColorString!),
                        ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }








}
