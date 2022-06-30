import 'package:flutter/material.dart';

import '../../utilities/color_constants.dart';
import '../../utilities/textstyle_constants.dart';

class BuildTextFormField extends StatelessWidget {
  const BuildTextFormField({
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
  final TextEditingController enteredController;
  final String? enteredHintText;
  final Widget? enteredSuffixIcon;
  final Icon? enteredPrefixIcon;
  final BorderRadius? enteredBorderRadius;
  final bool? obscure;
  final Key? enteredFieldKey;
  final TextInputType? enteredKeyboardType;
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
