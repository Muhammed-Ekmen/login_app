// ignore: file_names
import 'package:flutter/material.dart';

import '../../utilities/color_constants.dart';

@immutable
class BuildContainer extends StatelessWidget {
  const BuildContainer({
    Key? key,
    required this.enteredWidht,
    required this.enteredHeight,
    this.enteredBorderRadius,
    this.enteredChild,
    this.enteredColor = appMainColor,
  }) : super(key: key);
  final double enteredWidht;
  final double enteredHeight;
  final Color enteredColor;
  final BorderRadiusGeometry? enteredBorderRadius;
  final Widget? enteredChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: enteredWidht,
      height: enteredHeight,
      decoration: BoxDecoration(
        color: appMainColor,
        borderRadius: enteredBorderRadius ??
            const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
      ),
      child: enteredChild,
    );
  }
}
