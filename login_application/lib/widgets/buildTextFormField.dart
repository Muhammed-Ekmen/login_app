import 'package:flutter/material.dart';
import 'package:login_application/data/constants/color_constants.dart';
import 'package:login_application/data/constants/text_constants.dart';
import 'package:get/get.dart';

class BuildTextFormField extends StatelessWidget {
  BuildTextFormField({
    Key? key,
    required this.enteredController,
    this.enteredHintText,
    this.enteredSuffixIcon,
    this.enteredBorderRadius,
    this.enteredPrefixIcon,
  }) : super(key: key);
  TextEditingController enteredController;
  String? enteredHintText;
  Widget? enteredSuffixIcon;
  Icon? enteredPrefixIcon;
  BorderRadius? enteredBorderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        style: textFormTextStyle,
        controller: enteredController,
        validator: (incoming) {
          if (incoming!.isEmpty == true) {
            Get.snackbar(
              "It Can Not Be Empty!",
              "Please Check The Gaps...",
              backgroundColor: appMainColor.withOpacity(0.7),
            );
          } else {
            return null;
          }
          return null;
        },
        decoration: InputDecoration(
          border: enteredBorderRadius == null
              ? InputBorder.none
              : OutlineInputBorder(
                  borderRadius: enteredBorderRadius!,
                  borderSide: BorderSide.none),
          filled: true,
          fillColor: appTextFieldColor,
          hintText: enteredHintText,
          suffixIcon: enteredSuffixIcon,
          prefixIcon: enteredPrefixIcon,
          hintStyle: textFormTextStyle,
        ),
      ),
    );
  }
}
