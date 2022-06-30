import 'package:flutter/material.dart';

import '../utilities/color_constants.dart';

@immutable
class BuildDivider extends StatelessWidget {
  const BuildDivider({
    Key? key,
    this.enteredColor = appMainColor,
    this.enteredThickness = 2,
    this.enteredIndent,
    this.enteredEndIndent,
  }) : super(key: key);
  final Color? enteredColor;
  final double? enteredEndIndent;
  final double? enteredIndent;
  final double? enteredThickness;
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
