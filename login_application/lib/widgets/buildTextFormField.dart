import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/data/constants/color_constants.dart';
import 'package:login_application/data/constants/text_constants.dart';
import 'package:login_application/view/loginPage/controller/login_page_controllers.dart';

class BuildTextFormField extends StatelessWidget {
  final LoginPageController controller = Get.find();
  BuildTextFormField({
    Key? key,
    required this.enteredFieldKey,
    required this.enteredController,
    this.enteredKeyboardType,
    this.enteredHintText,
    this.enteredSuffixIcon,
    this.enteredBorderRadius,
    this.enteredPrefixIcon,
    this.obscure=false,
  }) : super(key: key);
  TextEditingController enteredController;
  String? enteredHintText;
  Widget? enteredSuffixIcon;
  Icon? enteredPrefixIcon;
  BorderRadius? enteredBorderRadius;
  bool? obscure;
  Key? enteredFieldKey;
  TextInputType? enteredKeyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        obscureText: obscure!,
        cursorColor: appMainColor,
        key: enteredFieldKey,
        style: textFormTextStyle,
        controller: enteredController,
        validator: (incoming) {
          if (incoming!.isEmpty) {
            return "It Can Not Be Empty!";
          } else {
            return null;
          }
        },
        keyboardType: enteredKeyboardType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
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
