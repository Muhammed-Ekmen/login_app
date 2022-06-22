import 'package:flutter/material.dart';
import 'package:login_application/data/constants/color_constants.dart';
import 'package:login_application/data/constants/text_constants.dart';
class BuildTextFormField extends StatelessWidget {
  BuildTextFormField({
    Key? key,
    required this.enteredFieldKey,
    required this.enteredController,
    this.enteredKeyboardType,
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
  Key? enteredFieldKey;
  TextInputType? enteredKeyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
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
