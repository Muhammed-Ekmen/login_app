// ignore: file_names
import 'package:flutter/material.dart';
import 'package:login_application/data/constants/color_constants.dart';

class BuildDivider extends StatelessWidget {
  BuildDivider({
    Key? key,
    this.enteredColor = appMainColor,
    this.enteredThickness = 2,
    this.enteredIndent,
    this.enteredEndIndent,
  }) : super(key: key);
  Color? enteredColor;
  double? enteredEndIndent;
  double? enteredIndent;
  double? enteredThickness;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: enteredColor,
      endIndent: enteredEndIndent ?? MediaQuery.of(context).size.width / 10,
      indent: enteredIndent ?? MediaQuery.of(context).size.width / 10,
      thickness: enteredThickness,
    );
  }
}
