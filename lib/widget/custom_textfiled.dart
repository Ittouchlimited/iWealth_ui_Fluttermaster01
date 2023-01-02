import 'package:coinspace/config/images.dart';
import 'package:coinspace/config/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? textEditingController;
  final bool isObsecure;
  final Widget? sufix;
  final Widget? prefix;
  final TextInputType? inputType;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.textEditingController,
    this.isObsecure = false,
    this.sufix,
    this.inputType,
    this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: Get.width,
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor,
        image: DecorationImage(
          image: AssetImage(
            AppTheme.isLightTheme == true
                ? DefaultImages.borderBG
                : DefaultImages.darkInput,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: TextFormField(
          keyboardType: inputType,
          obscureText: isObsecure,
          controller: textEditingController,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 13, left: 14, right: 14),
            border: InputBorder.none,
            suffixIcon: sufix ?? const SizedBox(),
            prefixIcon: prefix ?? null,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: HexColor(AppTheme.secondaryColorString!),
                ),
          ),
        ),
      ),
    );
  }
}
