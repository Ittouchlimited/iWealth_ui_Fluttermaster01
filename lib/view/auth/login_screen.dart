import 'package:coinspace/config/images.dart';
import 'package:coinspace/config/textstyle.dart';
import 'package:coinspace/view/auth/signup_screen.dart';
import 'package:coinspace/view/tab_screen.dart';
import 'package:coinspace/widget/custom_button.dart';
import 'package:coinspace/widget/custom_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).padding.top + 20),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              DefaultImages.appIcon,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Welcome",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Sign in to your account",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: HexColor(AppTheme.secondaryColorString!),
                            ),
                      ),
                      const SizedBox(height: 40),
                      CustomTextField(
                        hintText: "Email",
                        prefix: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            DefaultImages.email,
                            color: HexColor(AppTheme.secondaryColorString!),
                          ),
                        ),
                        sufix: const SizedBox(),
                        textEditingController: TextEditingController(),
                        inputType: TextInputType.emailAddress,
                        isObsecure: false,
                      ),
                      const SizedBox(height: 30),
                      CustomTextField(
                        hintText: "Password",
                        prefix: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            DefaultImages.lock,
                            color: HexColor(AppTheme.secondaryColorString!),
                          ),
                        ),
                        sufix: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            DefaultImages.eye,
                            color: HexColor(AppTheme.secondaryColorString!),
                          ),
                        ),
                        textEditingController: TextEditingController(),
                        inputType: TextInputType.emailAddress,
                        isObsecure: false,
                      ),
                      const SizedBox(height: 30),
                      CustomButton(
                        text: "Sign In",
                        onTap: () {
                          Get.offAll(
                            const TabScreen(),
                            transition: Transition.rightToLeft,
                          );
                        },
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: Text(
                          "Forgot password?",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: HexColor(AppTheme.primaryColorString!),
                              ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  const SignupScreen(),
                  transition: Transition.rightToLeft,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: HexColor(AppTheme.secondaryColorString!),
                        ),
                  ),
                  Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: HexColor(AppTheme.primaryColorString!),
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
